/* The comment below is needed for this file to be picked up by generate_ld */
/* RAM_POS: 0x80070B30 */

#include "memory.h"

#include "structs.h"
#include "types.h"
#include "macros.h"

#define RAM_END 0x80400000
#define MAIN_POOL_SLOT_COUNT 1600

/************ .rodata ************/

const char D_800E7210[] = "*** mmAlloc: size = 0 ***\n";
const char D_800E722C[] = "*** mm Error *** ---> No more slots available.\n";
const char D_800E725C[] = "\n*** mm Error *** ---> No suitble block found for allocation.\n";
const char D_800E729C[] = "*** mmAllocAtAddr: size = 0 ***\n";
const char D_800E72C0[] = "\n*** mm Error *** ---> No more slots available.\n";
const char D_800E72F4[] = "\n*** mm Error *** ---> Can't allocate memory at desired address.\n";
const char D_800E7338[] = "\n*** mm Error *** ---> Can't free ram at this location: %x\n";
const char D_800E7374[] = "\n*** mm Error *** ---> No match found for mmFree.\n";
const char D_800E73A8[] = "*** Slots still in use in region ***\n";
const char D_800E73D0[] = "\n*** mm Error *** ---> stbf stack too deep!\n";
const char D_800E7400[] = "\n*** mm Error *** ---> Can't fix the specified block.\n";
const char D_800E7438[] = "\n*** mm Error *** ---> Can't unfix the specified block.\n";
const char D_800E7474[] = "Colour %x >> %d\n";
const char D_800E7488[] = "Unable to record %d slots, colours overflowed table.\n";

/*********************************/

/************ .bss ************/

/* Size: 0x8 bytes */
typedef struct unk80070BE4_8_0 {
    s16 unk0;
    s16 unk2;
    s32 unk4;
} unk80070BE4_8_0;
    
/* Size: 0x14 bytes */
typedef struct MemoryPoolSlot {
/* 0x00 */ unk80070BE4_8_0 *unk0; 
/* 0x04 */ s32 size;
/* 0x08 */ s16 flags;
    // 0x00 = Slot is free 
    // 0x01 = Slot is being used?
    // 0x02 = ???
    // 0x04 = ???
/* 0x0A */ s16 prevIndex;
/* 0x0C */ s16 nextIndex;
/* 0x0E */ s16 index;
/* 0x10 */ u32 colorTag;
} MemoryPoolSlot;

/* Size: 0x10 bytes */
typedef struct MemoryPool {
/* 0x00 */ s32 maxNumSlots;
/* 0x04 */ s32 curNumSlots;
/* 0x08 */ MemoryPoolSlot *slots;
/* 0x0C */ s32 size;
} MemoryPool;

MemoryPool gMemoryPools[4];

#ifndef _ALIGN16
    #define _ALIGN16(val) ((val) & 0xFFFFFFF0) + 0x10
#endif

s32 gNumberOfMemoryPools;
s32 D_801235C4;

/* Size: 0x8 bytes */
typedef struct FreeQueueSlot {
    void *dataAddress;
    s8 unk4;
} FreeQueueSlot;

FreeQueueSlot gFreeQueue[256];

s32 gFreeQueueCount;
s32 gFreeQueueState;
s32 D_80123DD0[64];
s32 D_80123ED0[64];
s32 D_80123FD0[8];
s32 D_80123FF0[8];

extern MemoryPoolSlot D_8012D3F0;

/******************************/

/* Unknown size */
typedef struct unk800B7D10 {
    u8 pad0[0x14];
    s32 unk14;
} unk800B7D10;

unk800B7D10 *get_stack_pointer(void);
MemoryPoolSlot *allocate_from_memory_pool(s32, s32, u32);

MemoryPoolSlot *new_memory_pool(MemoryPoolSlot *arg0, s32 size, s32 numSlots);
void set_free_queue_state(s32);
void* allocate_from_main_pool_safe(s32, u32);
s32 *func_8006F510(void);
void func_8006F53C(s32*);
void func_80071440(void *dataAddress);
s32 get_memory_pool_index_containing_address(u8 *address);
void free_memory_pool_slot(s32 poolIndex, s32 slotIndex);

/**
 * Creates the main memory pool. 
 * Starts at 0x8012D3F0. Ends at 0x80400000. Contains 1600 allocation slots.
 */
void init_main_memory_pool(void) {
    gNumberOfMemoryPools = -1;
    if(1) {
        // Create the main memory pool.
        new_memory_pool(&D_8012D3F0, RAM_END - (s32)(&D_8012D3F0), MAIN_POOL_SLOT_COUNT);
    }
    set_free_queue_state(2);
    gFreeQueueCount = 0;
}

/**
 * Creates a new memory pool that is sectioned off the main one.
 */
MemoryPoolSlot *new_sub_memory_pool(s32 poolDataSize, s32 numSlots) {
    s32 size;
    MemoryPoolSlot *slots;
    s32 unused_2;
    s32 *temp = func_8006F510();
    MemoryPoolSlot *newPool;

    size = poolDataSize + (numSlots * sizeof(MemoryPoolSlot));
    slots = (MemoryPoolSlot *)allocate_from_main_pool_safe(size, COLOR_TAG_WHITE);
    newPool = new_memory_pool(slots, size, numSlots);
    func_8006F53C(temp);
    return newPool;
}

#ifdef NON_MATCHING
MemoryPoolSlot *new_memory_pool(MemoryPoolSlot *slots, s32 poolSize, s32 numSlots) {
    s32 i;
    MemoryPool *pool;
    MemoryPoolSlot *firstSlot;
    unk80070BE4_8_0 *temp3;
    
    pool = &gMemoryPools[++gNumberOfMemoryPools];
    pool->maxNumSlots = numSlots;
    pool->curNumSlots = 0;
    pool->slots = slots;
    pool->size = poolSize;
    
    for(i = 0; i < pool->maxNumSlots; i++) {
        slots[i].index = i;
    }
    
    firstSlot = pool->slots;
    temp3 = (unk80070BE4_8_0 *)&slots[numSlots];
    if((s32)temp3 & 0xF) {
        firstSlot->unk0 = (unk80070BE4_8_0 *)_ALIGN16((s32)temp3);
    } else {
        firstSlot->unk0 = temp3;
    }
    firstSlot->size = poolSize - (numSlots * sizeof(MemoryPoolSlot));
    firstSlot->flags = 0;
    firstSlot->prevIndex = -1;
    firstSlot->nextIndex = -1;
    
    pool->curNumSlots++;
    
    return pool->slots;
}
#else
GLOBAL_ASM("asm/non_matchings/memory/new_memory_pool.s")
#endif

/**
 * Reserves and returns memory from the main memory pool. Has 2 assert checks.
 * Will cause an exception if the size is 0 or if memory cannot be reserved.
 */
void *allocate_from_main_pool_safe(s32 size, u32 colorTag) {
    void *temp_v0;
    if (size == 0) {
        func_800B7460(*(s32 *)((u8 *)get_stack_pointer() + 0x14), size, colorTag);
    }
    temp_v0 = allocate_from_memory_pool(0, size, colorTag);
    if (temp_v0 == (void *)NULL) {
        func_800B7460(*(s32 *)((u8 *)get_stack_pointer() + 0x14), size, colorTag);
    }
    return temp_v0;
}

/**
 * Reserves and returns memory from the main memory pool. Has no assert checks.
 */
MemoryPoolSlot *allocate_from_main_pool(s32 size, u32 colorTag) {
    return allocate_from_memory_pool(0, size, colorTag);
}

#ifdef NON_MATCHING
MemoryPoolSlot *allocate_from_memory_pool(s32 memoryPoolIndex, s32 size, u32 colorTag) {
    MemoryPool *pool;
    MemoryPoolSlot *curSlot;
    MemoryPoolSlot *slots;
    s32 phi_a0;
    s32 phi_a2;
    s32 phi_s0;
    s32 *sp28;
    
    sp28 = func_8006F510();
    pool = &gMemoryPools[memoryPoolIndex];
    if (pool->curNumSlots + 1 == pool->maxNumSlots) {
        func_8006F53C(sp28);
    } else {
        if (size & 0xF) {
            size = _ALIGN16(size); // The size of the pool should be 16-byte aligned
        }
        phi_a0 = 0;
        phi_a2 = 0x7FFFFFFF; // INT_MAX
        phi_s0 = -1;
        while(phi_a0 != -1) {
            curSlot = &pool->slots[phi_a0];
            if (!curSlot->flags && curSlot->size >= size && curSlot->size < phi_a2) {
                phi_s0 = phi_a0;
                phi_a2 = curSlot->size;
            }
            phi_a0 = curSlot->nextIndex;
        }
        if (phi_s0 != -1) {
            allocate_memory_pool_slot(memoryPoolIndex, phi_s0, size, TRUE, FALSE, colorTag);
            func_8006F53C(sp28);
            return pool->slots[phi_s0].unk0;
        }
        func_8006F53C(sp28);
    }
    return (MemoryPoolSlot *)NULL;
}
#else
GLOBAL_ASM("asm/non_matchings/memory/allocate_from_memory_pool.s")
#endif

void *allocate_from_pool_containing_slots(MemoryPoolSlot *slots, s32 size) {
    s32 i;
    for(i = gNumberOfMemoryPools; i != 0; i--) {
        if (slots == gMemoryPools[i].slots) {
            return allocate_from_memory_pool(i, size, 0);
        }
    }
    return (void *)NULL;
}

#ifdef NON_MATCHING
void *allocate_at_address_in_main_pool(s32 size, u8* address, u32 colorTag) {
    s32 *sp38;
    s32 s0;
    MemoryPoolSlot *curSlot;
    MemoryPoolSlot* slots;

    sp38 = func_8006F510();
    if ((gMemoryPools[0].curNumSlots + 1) == gMemoryPools[0].maxNumSlots) {
        func_8006F53C(sp38);
    } else {
        s0 = 0;
        if (size & 0xF) {
            size = _ALIGN16(size); // The size of the pool should be 16-byte aligned
        }
        slots = gMemoryPools[0].slots;
        while(s0 != -1) {
            curSlot = &slots[s0];
            if (curSlot->flags == 0) {
                if ((address >= (u8*)curSlot->unk0) && (((u8*)curSlot->unk0 + curSlot->size) >= (address + size))) {
                    if (address == (u8*)curSlot->unk0) {
                        allocate_memory_pool_slot(0, s0, size, 1, 0, colorTag);
                        func_8006F53C(sp38);
                        return curSlot->unk0;
                    } else {
                        s0 = allocate_memory_pool_slot(0, s0, address - (u8*)curSlot->unk0, 0, 1, colorTag);
                        allocate_memory_pool_slot(0, s0, size, 1, 0, colorTag);
                        func_8006F53C(sp38);
                        return slots[s0].unk0;
                    }
                }
            }
            s0 = curSlot->nextIndex;
        }
        func_8006F53C(sp38);
    }
    return NULL;
}
#else
GLOBAL_ASM("asm/non_matchings/memory/allocate_at_address_in_main_pool.s")
#endif

void free_slot_containing_address(u8 *address);

/**
 * Sets the state of the free queue. State is either 0, 1, or 2.
 * The free queue will get flushed if the state is set to 0.
 */
void set_free_queue_state(s32 state) {
    s32 *sp2C = func_8006F510();
    gFreeQueueState = state;
    if (state == 0) { // flush free queue if state is 0.
        while (gFreeQueueCount > 0) {
            free_slot_containing_address(gFreeQueue[--gFreeQueueCount].dataAddress);
        }
    }
    func_8006F53C(sp2C);
}

/**
 * Unallocates data from the pool that contains the data. Will free immediately if the free queue
 * state is set to 0, otherwise the data will just be marked for deletion.  
 */
void free_from_memory_pool(void *data) {
    s32 *sp1C = func_8006F510();
    if (gFreeQueueState == 0) {
        free_slot_containing_address(data);
    } else {
        func_80071440(data);
    }
    func_8006F53C(sp1C);
}

GLOBAL_ASM("asm/non_matchings/memory/func_80071198.s")

#ifdef NON_MATCHING
void free_slot_containing_address(u8 *address) {
    s32 poolIndex;
    s32 slotIndex;
    MemoryPoolSlot *slots;
    MemoryPoolSlot *slot;

    poolIndex = get_memory_pool_index_containing_address(address);
    slots = gMemoryPools[poolIndex].slots;
    for(slotIndex = 0; slotIndex != -1; slotIndex = slot->nextIndex) {
        slot = &slots[slotIndex];
        if (address == (u8*)slot->unk0) {
            if (slot->flags == 1 || slot->flags == 4) {
                free_memory_pool_slot(poolIndex, slotIndex);
            }
            break;
        }
    }
}

// Unused?
void func_80071314(void) {
    s32 *sp40;
    MemoryPool *pool;
    MemoryPoolSlot *slot;
    s32 poolIndex;
    s32 slotIndex;

    sp40 = func_8006F510();
    
    for (poolIndex = gNumberOfMemoryPools; poolIndex != -1; poolIndex--) {
        pool = &gMemoryPools[poolIndex];
        for(slotIndex = 0; slotIndex != -1; slotIndex = slot->nextIndex) {
            slot = &pool->slots[slotIndex];
            if (slot->flags == 1) {
                free_memory_pool_slot(poolIndex, slotIndex);
            }
            if (slot->flags == 4 && pool->curNumSlots == 1) {
                free_memory_pool_slot(poolIndex, slotIndex);
            } else {
                func_8006F53C(sp40);
                return;
            }
        }
    }
    func_8006F53C(sp40);
}

#else
GLOBAL_ASM("asm/non_matchings/memory/free_slot_containing_address.s")
#endif

void func_80071440(void* data) {
    gFreeQueue[gFreeQueueCount].dataAddress = data;
    gFreeQueue[gFreeQueueCount].unk4 = gFreeQueueState;
    gFreeQueueCount++;
}

s32 func_80071478(u8 *address) {
    s32 slotIndex;
    MemoryPoolSlot *slot;
    MemoryPool *pool;
    s32 *sp18;

    sp18 = func_8006F510();
    pool = &gMemoryPools[get_memory_pool_index_containing_address(address)];
    slotIndex = 0;
    while(slotIndex != -1) {
        slot = slotIndex + pool->slots; // `slot = &pool->slots[slotIndex];` does not match.
        if (address == (u8*)slot->unk0) {
            if (slot->flags == 1 || slot->flags == 4) {
                slot->flags |= 2;
                func_8006F53C(sp18);
                return 1;
            }
        }
        slotIndex = slot->nextIndex;
    }
    func_8006F53C(sp18);
    return 0;
}

s32 func_80071538(u8 *address) {
    s32 slotIndex;
    MemoryPoolSlot *slot;
    MemoryPool *pool;
    s32 *sp18;

    sp18 = func_8006F510();
    pool = &gMemoryPools[get_memory_pool_index_containing_address(address)];
    slotIndex = 0;
    while(slotIndex != -1) {
        slot = slotIndex + pool->slots; // `slot = &pool->slots[slotIndex];` does not match.
        if (address == (u8*)slot->unk0) {
            if (slot->flags & 2) {
                slot->flags ^= 2;
                func_8006F53C(sp18);
                return 1;
            }
        }
        slotIndex = slot->nextIndex;
    }
    func_8006F53C(sp18);
    return 0;
}

/**
 * Returns the index of the memory pool containing the memory address.
 */
s32 get_memory_pool_index_containing_address(u8 *address) {
    s32 i;
    MemoryPool *pool;

    for(i = gNumberOfMemoryPools; i > 0; i--) {
        pool = &gMemoryPools[i];
        if ((u8*)pool->slots >= address) {
            continue;
        }
        if(address < pool->size + (u8*)pool->slots) {
            break;
        }
    }
    return i;
}

#ifdef NON_MATCHING
// Regalloc issues
void free_memory_pool_slot(s32 poolIndex, s32 slotIndex) {
    s32 nextIndex, prevIndex, tempNextIndex;
    MemoryPool *pool;
    MemoryPoolSlot *slots;
    MemoryPoolSlot *slot;
    MemoryPoolSlot *nextSlot;
    MemoryPoolSlot *prevSlot;

    pool = &gMemoryPools[poolIndex];
    slots = pool->slots;
    slot = &slots[slotIndex];
    prevIndex = slot->prevIndex;
    nextIndex = slot->nextIndex;
    nextSlot = &slots[nextIndex];
    prevSlot = &slots[prevIndex];
    slot->flags = 0;
    
    if (nextIndex != -1) {
        if(nextSlot->flags == 0) {
            slot->size += nextSlot->size;
            tempNextIndex = nextSlot->nextIndex;
            slot->nextIndex = tempNextIndex;
            if (tempNextIndex != -1) {
                slots[tempNextIndex].prevIndex = slotIndex;
            }
            pool->curNumSlots--;
            slots[pool->curNumSlots].index = nextIndex;
        }
    }
    if (prevIndex != -1) {
        if(prevSlot->flags == 0) {
            prevSlot->size += slot->size;
            tempNextIndex = slot->nextIndex;
            prevSlot->nextIndex = tempNextIndex;
            if (tempNextIndex != -1) {
                slots[tempNextIndex].prevIndex = prevIndex;
            }
            pool->curNumSlots--;
            slots[pool->curNumSlots].index = slotIndex;
        }
    }
}

// Unused?
MemoryPoolSlot *func_80071774(s32 poolIndex) {
    return gMemoryPools[poolIndex].slots;
}
#else
GLOBAL_ASM("asm/non_matchings/memory/free_memory_pool_slot.s")
#endif

#ifdef NON_MATCHING
s32 allocate_memory_pool_slot(s32 memoryPoolIndex, s32 slotIndex, s32 size, s32 slotIsTaken, s32 newSlotIsTaken, u32 colorTag) {
    s32 slotSize;
    s32 newIndex;
    s32 futureIndex;
    MemoryPoolSlot *slot;
    MemoryPoolSlot *newSlot;
    MemoryPool *pool;

    pool = &gMemoryPools[memoryPoolIndex];
    slot = &pool->slots[slotIndex];
    slotSize = slot->size;
    slot->flags = slotIsTaken;
    slot->size = size;
    slot->colorTag = colorTag;
    if (size < slotSize) {
        newIndex = pool->slots[pool->curNumSlots].index;
        pool->curNumSlots++;
        newSlot = &pool->slots[newIndex];
        newSlot->unk0 = ((u8*)slot->unk0) + size;
        newSlot->size = slotSize - size;
        newSlot->flags = newSlotIsTaken;
        futureIndex = slot->nextIndex;
        newSlot->prevIndex = slotIndex;
        newSlot->nextIndex = futureIndex;
        slot->nextIndex = newIndex;
        if (futureIndex != -1) {
            pool->slots[futureIndex].prevIndex = newIndex;
        }
        return newIndex;
    }
    return slotIndex;
}
#else
GLOBAL_ASM("asm/non_matchings/memory/allocate_memory_pool_slot.s")
#endif


GLOBAL_ASM("asm/non_matchings/memory/func_80071850.s")

#ifdef NON_MATCHING
s32 get_memory_color_tag_count(s32 arg0) {
    s32 i, count;
    count = 0;
    for(i = 0; i < 80; i++) { // Issue with this loop
        if ((gMemoryPools[0].slots[i].flags) && (arg0 == gMemoryPools[0].slots[i].colorTag)) {
            count++;
        }
    }
    return count;
}
#else
GLOBAL_ASM("asm/non_matchings/memory/get_memory_color_tag_count.s")
#endif

/**
 * Unused. 
 * Prints out the counts for each color tag in the main pool.
 */
void print_memory_color_tags(void) {
    stubbed_printf("RED %d\n", get_memory_color_tag_count(COLOR_TAG_RED));
    stubbed_printf("GREEN %d\n", get_memory_color_tag_count(COLOR_TAG_GREEN));
    stubbed_printf("BLUE %d\n", get_memory_color_tag_count(COLOR_TAG_BLUE));
    stubbed_printf("YELLOW %d\n", get_memory_color_tag_count(COLOR_TAG_YELLOW));
    stubbed_printf("MAGENTA %d\n", get_memory_color_tag_count(COLOR_TAG_MAGENTA));
    stubbed_printf("CYAN %d\n", get_memory_color_tag_count(COLOR_TAG_CYAN));
    stubbed_printf("WHITE %d\n", get_memory_color_tag_count(COLOR_TAG_WHITE));
    stubbed_printf("GREY %d\n", get_memory_color_tag_count(COLOR_TAG_GRAY));
    stubbed_printf("ORANGE %d\n\n", get_memory_color_tag_count(COLOR_TAG_ORANGE));
}

/**
 * Unused. 
 * Draws the counts for each color tag in the main pool.
 * See: https://tcrf.net/Diddy_Kong_Racing#Current_Colors
 */
void render_memory_color_tags(void) {
    set_render_printf_background_color(0, 0, 0, 128);
    render_printf("RED %d\n", get_memory_color_tag_count(COLOR_TAG_RED));
    render_printf("GREEN %d\n", get_memory_color_tag_count(COLOR_TAG_GREEN));
    render_printf("BLUE %d\n", get_memory_color_tag_count(COLOR_TAG_BLUE));
    render_printf("YELLOW %d\n", get_memory_color_tag_count(COLOR_TAG_YELLOW));
    render_printf("MAGENTA %d\n", get_memory_color_tag_count(COLOR_TAG_MAGENTA));
    render_printf("CYAN %d\n", get_memory_color_tag_count(COLOR_TAG_CYAN));
    render_printf("WHITE %d\n", get_memory_color_tag_count(COLOR_TAG_WHITE));
    render_printf("GREY %d\n", get_memory_color_tag_count(COLOR_TAG_GRAY));
    render_printf("ORANGE %d\n\n", get_memory_color_tag_count(COLOR_TAG_ORANGE));
}

GLOBAL_ASM("asm/non_matchings/memory/func_80071C74.s")
GLOBAL_ASM("asm/non_matchings/memory/func_80071CE8.s")
GLOBAL_ASM("asm/non_matchings/memory/func_80071D30.s")
GLOBAL_ASM("asm/non_matchings/memory/func_80071E58.s")
GLOBAL_ASM("asm/non_matchings/memory/func_80071F80.s")
GLOBAL_ASM("asm/non_matchings/memory/func_800720DC.s")
