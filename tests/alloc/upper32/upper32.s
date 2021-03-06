// Code generated by command: go run asm.go -out upper32.s -stubs stub.go. DO NOT EDIT.

#include "textflag.h"

// func Upper32() uint64
TEXT ·Upper32(SB), NOSPLIT, $8-8
	// Initialize sum.
	XORQ AX, AX

	// Initialize registers.
	MOVQ $0x9e77d78aacb8cbcc, CX
	MOVQ $0x9e77d78aacb8cbcc, DX
	MOVQ $0x9e77d78aacb8cbcc, BX
	MOVQ $0x9e77d78aacb8cbcc, SI
	MOVQ $0x9e77d78aacb8cbcc, DI
	MOVQ $0x9e77d78aacb8cbcc, R8
	MOVQ $0x9e77d78aacb8cbcc, R9
	MOVQ $0x9e77d78aacb8cbcc, R10
	MOVQ $0x9e77d78aacb8cbcc, R11
	MOVQ $0x9e77d78aacb8cbcc, R12
	MOVQ $0x9e77d78aacb8cbcc, R13
	MOVQ $0x9e77d78aacb8cbcc, R14
	MOVQ $0x9e77d78aacb8cbcc, R15
	MOVQ $0x9e77d78aacb8cbcc, BP
	MOVQ $0x9e77d78aacb8cbcc, CX
	MOVQ $0x9e77d78aacb8cbcc, DX
	MOVQ $0x9e77d78aacb8cbcc, BX
	MOVQ $0x9e77d78aacb8cbcc, SI
	MOVQ $0x9e77d78aacb8cbcc, DI
	MOVQ $0x9e77d78aacb8cbcc, R8
	MOVQ $0x9e77d78aacb8cbcc, R9
	MOVQ $0x9e77d78aacb8cbcc, R10
	MOVQ $0x9e77d78aacb8cbcc, R11
	MOVQ $0x9e77d78aacb8cbcc, R12
	MOVQ $0x9e77d78aacb8cbcc, R13
	MOVQ $0x9e77d78aacb8cbcc, R14
	MOVQ $0x9e77d78aacb8cbcc, R15
	MOVQ $0x9e77d78aacb8cbcc, BP
	MOVQ $0x9e77d78aacb8cbcc, CX
	MOVQ $0x9e77d78aacb8cbcc, DX
	MOVQ $0x9e77d78aacb8cbcc, BX
	MOVQ $0x9e77d78aacb8cbcc, SI
	MOVQ $0x9e77d78aacb8cbcc, DI
	MOVQ $0x9e77d78aacb8cbcc, R8
	MOVQ $0x9e77d78aacb8cbcc, R9
	MOVQ $0x9e77d78aacb8cbcc, R10
	MOVQ $0x9e77d78aacb8cbcc, R11
	MOVQ $0x9e77d78aacb8cbcc, R12
	MOVQ $0x9e77d78aacb8cbcc, R13
	MOVQ $0x9e77d78aacb8cbcc, R14
	MOVQ $0x9e77d78aacb8cbcc, R15
	MOVQ $0x9e77d78aacb8cbcc, BP

	// Iteration 1.
	MOVL $0x00000001, CX
	MOVL $0x00000002, DX
	MOVL $0x00000003, BX
	MOVL $0x00000004, SI
	MOVL $0x00000005, DI
	MOVL $0x00000006, R8
	MOVL $0x00000007, R9
	MOVL $0x00000008, R10
	MOVL $0x00000009, R11
	MOVL $0x0000000a, R12
	MOVL $0x0000000b, R13
	MOVL $0x0000000c, R14
	MOVL $0x0000000d, R15
	MOVL $0x0000000e, BP
	ADDQ CX, AX
	ADDQ DX, AX
	ADDQ BX, AX
	ADDQ SI, AX
	ADDQ DI, AX
	ADDQ R8, AX
	ADDQ R9, AX
	ADDQ R10, AX
	ADDQ R11, AX
	ADDQ R12, AX
	ADDQ R13, AX
	ADDQ R14, AX
	ADDQ R15, AX
	ADDQ BP, AX

	// Iteration 2.
	MOVL $0x0000000f, CX
	MOVL $0x00000010, DX
	MOVL $0x00000011, BX
	MOVL $0x00000012, SI
	MOVL $0x00000013, DI
	MOVL $0x00000014, R8
	MOVL $0x00000015, R9
	MOVL $0x00000016, R10
	MOVL $0x00000017, R11
	MOVL $0x00000018, R12
	MOVL $0x00000019, R13
	MOVL $0x0000001a, R14
	MOVL $0x0000001b, R15
	MOVL $0x0000001c, BP
	ADDQ CX, AX
	ADDQ DX, AX
	ADDQ BX, AX
	ADDQ SI, AX
	ADDQ DI, AX
	ADDQ R8, AX
	ADDQ R9, AX
	ADDQ R10, AX
	ADDQ R11, AX
	ADDQ R12, AX
	ADDQ R13, AX
	ADDQ R14, AX
	ADDQ R15, AX
	ADDQ BP, AX

	// Iteration 3.
	MOVL $0x0000001d, CX
	MOVL $0x0000001e, DX
	MOVL $0x0000001f, BX
	MOVL $0x00000020, SI
	MOVL $0x00000021, DI
	MOVL $0x00000022, R8
	MOVL $0x00000023, R9
	MOVL $0x00000024, R10
	MOVL $0x00000025, R11
	MOVL $0x00000026, R12
	MOVL $0x00000027, R13
	MOVL $0x00000028, R14
	MOVL $0x00000029, R15
	MOVL $0x0000002a, BP
	ADDQ CX, AX
	ADDQ DX, AX
	ADDQ BX, AX
	ADDQ SI, AX
	ADDQ DI, AX
	ADDQ R8, AX
	ADDQ R9, AX
	ADDQ R10, AX
	ADDQ R11, AX
	ADDQ R12, AX
	ADDQ R13, AX
	ADDQ R14, AX
	ADDQ R15, AX
	ADDQ BP, AX

	// Store result and return.
	MOVQ AX, ret+0(FP)
	RET
