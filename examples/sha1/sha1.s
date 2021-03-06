// Code generated by command: go run asm.go -out sha1.s -stubs stub.go. DO NOT EDIT.

// func block(h *[5]uint32, m []byte)
TEXT ·block(SB), $64-32
	MOVQ h+0(FP), AX
	MOVQ m_base+8(FP), CX

	// Load initial hash.
	MOVL (AX), DX
	MOVL 4(AX), BX
	MOVL 8(AX), SI
	MOVL 12(AX), DI
	MOVL 16(AX), R8

	// Initialize registers.
	MOVL DX, R9
	MOVL BX, R10
	MOVL SI, R11
	MOVL DI, R12
	MOVL R8, R13

	// Round 0.
	MOVL   (CX), R14
	BSWAPL R14
	MOVL   R14, (SP)
	MOVL   R9, R15
	ROLL   $0x05, R15
	MOVL   R12, BP
	XORL   R11, BP
	ANDL   R10, BP
	XORL   R12, BP
	ADDL   BP, R15
	ADDL   R13, R15
	ADDL   $0x5a827999, R15
	ADDL   R14, R15
	ROLL   $0x1e, R10

	// Round 1.
	MOVL   4(CX), R13
	BSWAPL R13
	MOVL   R13, 4(SP)
	MOVL   R15, R14
	ROLL   $0x05, R14
	MOVL   R11, BP
	XORL   R10, BP
	ANDL   R9, BP
	XORL   R11, BP
	ADDL   BP, R14
	ADDL   R12, R14
	ADDL   $0x5a827999, R14
	ADDL   R13, R14
	ROLL   $0x1e, R9

	// Round 2.
	MOVL   8(CX), R12
	BSWAPL R12
	MOVL   R12, 8(SP)
	MOVL   R14, R13
	ROLL   $0x05, R13
	MOVL   R10, BP
	XORL   R9, BP
	ANDL   R15, BP
	XORL   R10, BP
	ADDL   BP, R13
	ADDL   R11, R13
	ADDL   $0x5a827999, R13
	ADDL   R12, R13
	ROLL   $0x1e, R15

	// Round 3.
	MOVL   12(CX), R11
	BSWAPL R11
	MOVL   R11, 12(SP)
	MOVL   R13, R12
	ROLL   $0x05, R12
	MOVL   R9, BP
	XORL   R15, BP
	ANDL   R14, BP
	XORL   R9, BP
	ADDL   BP, R12
	ADDL   R10, R12
	ADDL   $0x5a827999, R12
	ADDL   R11, R12
	ROLL   $0x1e, R14

	// Round 4.
	MOVL   16(CX), R10
	BSWAPL R10
	MOVL   R10, 16(SP)
	MOVL   R12, R11
	ROLL   $0x05, R11
	MOVL   R15, BP
	XORL   R14, BP
	ANDL   R13, BP
	XORL   R15, BP
	ADDL   BP, R11
	ADDL   R9, R11
	ADDL   $0x5a827999, R11
	ADDL   R10, R11
	ROLL   $0x1e, R13

	// Round 5.
	MOVL   20(CX), R9
	BSWAPL R9
	MOVL   R9, 20(SP)
	MOVL   R11, R10
	ROLL   $0x05, R10
	MOVL   R14, BP
	XORL   R13, BP
	ANDL   R12, BP
	XORL   R14, BP
	ADDL   BP, R10
	ADDL   R15, R10
	ADDL   $0x5a827999, R10
	ADDL   R9, R10
	ROLL   $0x1e, R12

	// Round 6.
	MOVL   24(CX), R9
	BSWAPL R9
	MOVL   R9, 24(SP)
	MOVL   R10, R15
	ROLL   $0x05, R15
	MOVL   R13, BP
	XORL   R12, BP
	ANDL   R11, BP
	XORL   R13, BP
	ADDL   BP, R15
	ADDL   R14, R15
	ADDL   $0x5a827999, R15
	ADDL   R9, R15
	ROLL   $0x1e, R11

	// Round 7.
	MOVL   28(CX), R9
	BSWAPL R9
	MOVL   R9, 28(SP)
	MOVL   R15, R14
	ROLL   $0x05, R14
	MOVL   R12, BP
	XORL   R11, BP
	ANDL   R10, BP
	XORL   R12, BP
	ADDL   BP, R14
	ADDL   R13, R14
	ADDL   $0x5a827999, R14
	ADDL   R9, R14
	ROLL   $0x1e, R10

	// Round 8.
	MOVL   32(CX), R9
	BSWAPL R9
	MOVL   R9, 32(SP)
	MOVL   R14, R13
	ROLL   $0x05, R13
	MOVL   R11, BP
	XORL   R10, BP
	ANDL   R15, BP
	XORL   R11, BP
	ADDL   BP, R13
	ADDL   R12, R13
	ADDL   $0x5a827999, R13
	ADDL   R9, R13
	ROLL   $0x1e, R15

	// Round 9.
	MOVL   36(CX), R9
	BSWAPL R9
	MOVL   R9, 36(SP)
	MOVL   R13, R12
	ROLL   $0x05, R12
	MOVL   R10, BP
	XORL   R15, BP
	ANDL   R14, BP
	XORL   R10, BP
	ADDL   BP, R12
	ADDL   R11, R12
	ADDL   $0x5a827999, R12
	ADDL   R9, R12
	ROLL   $0x1e, R14

	// Round 10.
	MOVL   40(CX), R9
	BSWAPL R9
	MOVL   R9, 40(SP)
	MOVL   R12, R11
	ROLL   $0x05, R11
	MOVL   R15, BP
	XORL   R14, BP
	ANDL   R13, BP
	XORL   R15, BP
	ADDL   BP, R11
	ADDL   R10, R11
	ADDL   $0x5a827999, R11
	ADDL   R9, R11
	ROLL   $0x1e, R13

	// Round 11.
	MOVL   44(CX), R9
	BSWAPL R9
	MOVL   R9, 44(SP)
	MOVL   R11, R10
	ROLL   $0x05, R10
	MOVL   R14, BP
	XORL   R13, BP
	ANDL   R12, BP
	XORL   R14, BP
	ADDL   BP, R10
	ADDL   R15, R10
	ADDL   $0x5a827999, R10
	ADDL   R9, R10
	ROLL   $0x1e, R12

	// Round 12.
	MOVL   48(CX), R9
	BSWAPL R9
	MOVL   R9, 48(SP)
	MOVL   R10, R15
	ROLL   $0x05, R15
	MOVL   R13, BP
	XORL   R12, BP
	ANDL   R11, BP
	XORL   R13, BP
	ADDL   BP, R15
	ADDL   R14, R15
	ADDL   $0x5a827999, R15
	ADDL   R9, R15
	ROLL   $0x1e, R11

	// Round 13.
	MOVL   52(CX), R9
	BSWAPL R9
	MOVL   R9, 52(SP)
	MOVL   R15, R14
	ROLL   $0x05, R14
	MOVL   R12, BP
	XORL   R11, BP
	ANDL   R10, BP
	XORL   R12, BP
	ADDL   BP, R14
	ADDL   R13, R14
	ADDL   $0x5a827999, R14
	ADDL   R9, R14
	ROLL   $0x1e, R10

	// Round 14.
	MOVL   56(CX), R9
	BSWAPL R9
	MOVL   R9, 56(SP)
	MOVL   R14, R13
	ROLL   $0x05, R13
	MOVL   R11, BP
	XORL   R10, BP
	ANDL   R15, BP
	XORL   R11, BP
	ADDL   BP, R13
	ADDL   R12, R13
	ADDL   $0x5a827999, R13
	ADDL   R9, R13
	ROLL   $0x1e, R15

	// Round 15.
	MOVL   60(CX), CX
	BSWAPL CX
	MOVL   CX, 60(SP)
	MOVL   R13, R9
	ROLL   $0x05, R9
	MOVL   R10, R12
	XORL   R15, R12
	ANDL   R14, R12
	XORL   R10, R12
	ADDL   R12, R9
	ADDL   R11, R9
	ADDL   $0x5a827999, R9
	ADDL   CX, R9
	ROLL   $0x1e, R14

	// Round 16.
	MOVL 52(SP), CX
	XORL 32(SP), CX
	XORL 8(SP), CX
	XORL (SP), CX
	ROLL $0x01, CX
	MOVL CX, (SP)
	MOVL R9, R11
	ROLL $0x05, R11
	MOVL R15, R12
	XORL R14, R12
	ANDL R13, R12
	XORL R15, R12
	ADDL R12, R11
	ADDL R10, R11
	ADDL $0x5a827999, R11
	ADDL CX, R11
	ROLL $0x1e, R13

	// Round 17.
	MOVL 56(SP), CX
	XORL 36(SP), CX
	XORL 12(SP), CX
	XORL 4(SP), CX
	ROLL $0x01, CX
	MOVL CX, 4(SP)
	MOVL R11, R10
	ROLL $0x05, R10
	MOVL R14, R12
	XORL R13, R12
	ANDL R9, R12
	XORL R14, R12
	ADDL R12, R10
	ADDL R15, R10
	ADDL $0x5a827999, R10
	ADDL CX, R10
	ROLL $0x1e, R9

	// Round 18.
	MOVL 60(SP), CX
	XORL 40(SP), CX
	XORL 16(SP), CX
	XORL 8(SP), CX
	ROLL $0x01, CX
	MOVL CX, 8(SP)
	MOVL R10, R12
	ROLL $0x05, R12
	MOVL R13, R15
	XORL R9, R15
	ANDL R11, R15
	XORL R13, R15
	ADDL R15, R12
	ADDL R14, R12
	ADDL $0x5a827999, R12
	ADDL CX, R12
	ROLL $0x1e, R11

	// Round 19.
	MOVL (SP), CX
	XORL 44(SP), CX
	XORL 20(SP), CX
	XORL 12(SP), CX
	ROLL $0x01, CX
	MOVL CX, 12(SP)
	MOVL R12, R14
	ROLL $0x05, R14
	MOVL R9, R15
	XORL R11, R15
	ANDL R10, R15
	XORL R9, R15
	ADDL R15, R14
	ADDL R13, R14
	ADDL $0x5a827999, R14
	ADDL CX, R14
	ROLL $0x1e, R10

	// Round 20.
	MOVL 4(SP), CX
	XORL 48(SP), CX
	XORL 24(SP), CX
	XORL 16(SP), CX
	ROLL $0x01, CX
	MOVL CX, 16(SP)
	MOVL R14, R13
	ROLL $0x05, R13
	MOVL R12, R15
	XORL R10, R15
	XORL R11, R15
	ADDL R15, R13
	ADDL R9, R13
	ADDL $0x6ed9eba1, R13
	ADDL CX, R13
	ROLL $0x1e, R12

	// Round 21.
	MOVL 8(SP), CX
	XORL 52(SP), CX
	XORL 28(SP), CX
	XORL 20(SP), CX
	ROLL $0x01, CX
	MOVL CX, 20(SP)
	MOVL R13, R9
	ROLL $0x05, R9
	MOVL R14, R15
	XORL R12, R15
	XORL R10, R15
	ADDL R15, R9
	ADDL R11, R9
	ADDL $0x6ed9eba1, R9
	ADDL CX, R9
	ROLL $0x1e, R14

	// Round 22.
	MOVL 12(SP), CX
	XORL 56(SP), CX
	XORL 32(SP), CX
	XORL 24(SP), CX
	ROLL $0x01, CX
	MOVL CX, 24(SP)
	MOVL R9, R11
	ROLL $0x05, R11
	MOVL R13, R15
	XORL R14, R15
	XORL R12, R15
	ADDL R15, R11
	ADDL R10, R11
	ADDL $0x6ed9eba1, R11
	ADDL CX, R11
	ROLL $0x1e, R13

	// Round 23.
	MOVL 16(SP), CX
	XORL 60(SP), CX
	XORL 36(SP), CX
	XORL 28(SP), CX
	ROLL $0x01, CX
	MOVL CX, 28(SP)
	MOVL R11, R10
	ROLL $0x05, R10
	MOVL R9, R15
	XORL R13, R15
	XORL R14, R15
	ADDL R15, R10
	ADDL R12, R10
	ADDL $0x6ed9eba1, R10
	ADDL CX, R10
	ROLL $0x1e, R9

	// Round 24.
	MOVL 20(SP), CX
	XORL (SP), CX
	XORL 40(SP), CX
	XORL 32(SP), CX
	ROLL $0x01, CX
	MOVL CX, 32(SP)
	MOVL R10, R12
	ROLL $0x05, R12
	MOVL R11, R15
	XORL R9, R15
	XORL R13, R15
	ADDL R15, R12
	ADDL R14, R12
	ADDL $0x6ed9eba1, R12
	ADDL CX, R12
	ROLL $0x1e, R11

	// Round 25.
	MOVL 24(SP), CX
	XORL 4(SP), CX
	XORL 44(SP), CX
	XORL 36(SP), CX
	ROLL $0x01, CX
	MOVL CX, 36(SP)
	MOVL R12, R14
	ROLL $0x05, R14
	MOVL R10, R15
	XORL R11, R15
	XORL R9, R15
	ADDL R15, R14
	ADDL R13, R14
	ADDL $0x6ed9eba1, R14
	ADDL CX, R14
	ROLL $0x1e, R10

	// Round 26.
	MOVL 28(SP), CX
	XORL 8(SP), CX
	XORL 48(SP), CX
	XORL 40(SP), CX
	ROLL $0x01, CX
	MOVL CX, 40(SP)
	MOVL R14, R13
	ROLL $0x05, R13
	MOVL R12, R15
	XORL R10, R15
	XORL R11, R15
	ADDL R15, R13
	ADDL R9, R13
	ADDL $0x6ed9eba1, R13
	ADDL CX, R13
	ROLL $0x1e, R12

	// Round 27.
	MOVL 32(SP), CX
	XORL 12(SP), CX
	XORL 52(SP), CX
	XORL 44(SP), CX
	ROLL $0x01, CX
	MOVL CX, 44(SP)
	MOVL R13, R9
	ROLL $0x05, R9
	MOVL R14, R15
	XORL R12, R15
	XORL R10, R15
	ADDL R15, R9
	ADDL R11, R9
	ADDL $0x6ed9eba1, R9
	ADDL CX, R9
	ROLL $0x1e, R14

	// Round 28.
	MOVL 36(SP), CX
	XORL 16(SP), CX
	XORL 56(SP), CX
	XORL 48(SP), CX
	ROLL $0x01, CX
	MOVL CX, 48(SP)
	MOVL R9, R11
	ROLL $0x05, R11
	MOVL R13, R15
	XORL R14, R15
	XORL R12, R15
	ADDL R15, R11
	ADDL R10, R11
	ADDL $0x6ed9eba1, R11
	ADDL CX, R11
	ROLL $0x1e, R13

	// Round 29.
	MOVL 40(SP), CX
	XORL 20(SP), CX
	XORL 60(SP), CX
	XORL 52(SP), CX
	ROLL $0x01, CX
	MOVL CX, 52(SP)
	MOVL R11, R10
	ROLL $0x05, R10
	MOVL R9, R15
	XORL R13, R15
	XORL R14, R15
	ADDL R15, R10
	ADDL R12, R10
	ADDL $0x6ed9eba1, R10
	ADDL CX, R10
	ROLL $0x1e, R9

	// Round 30.
	MOVL 44(SP), CX
	XORL 24(SP), CX
	XORL (SP), CX
	XORL 56(SP), CX
	ROLL $0x01, CX
	MOVL CX, 56(SP)
	MOVL R10, R12
	ROLL $0x05, R12
	MOVL R11, R15
	XORL R9, R15
	XORL R13, R15
	ADDL R15, R12
	ADDL R14, R12
	ADDL $0x6ed9eba1, R12
	ADDL CX, R12
	ROLL $0x1e, R11

	// Round 31.
	MOVL 48(SP), CX
	XORL 28(SP), CX
	XORL 4(SP), CX
	XORL 60(SP), CX
	ROLL $0x01, CX
	MOVL CX, 60(SP)
	MOVL R12, R14
	ROLL $0x05, R14
	MOVL R10, R15
	XORL R11, R15
	XORL R9, R15
	ADDL R15, R14
	ADDL R13, R14
	ADDL $0x6ed9eba1, R14
	ADDL CX, R14
	ROLL $0x1e, R10

	// Round 32.
	MOVL 52(SP), CX
	XORL 32(SP), CX
	XORL 8(SP), CX
	XORL (SP), CX
	ROLL $0x01, CX
	MOVL CX, (SP)
	MOVL R14, R13
	ROLL $0x05, R13
	MOVL R12, R15
	XORL R10, R15
	XORL R11, R15
	ADDL R15, R13
	ADDL R9, R13
	ADDL $0x6ed9eba1, R13
	ADDL CX, R13
	ROLL $0x1e, R12

	// Round 33.
	MOVL 56(SP), CX
	XORL 36(SP), CX
	XORL 12(SP), CX
	XORL 4(SP), CX
	ROLL $0x01, CX
	MOVL CX, 4(SP)
	MOVL R13, R9
	ROLL $0x05, R9
	MOVL R14, R15
	XORL R12, R15
	XORL R10, R15
	ADDL R15, R9
	ADDL R11, R9
	ADDL $0x6ed9eba1, R9
	ADDL CX, R9
	ROLL $0x1e, R14

	// Round 34.
	MOVL 60(SP), CX
	XORL 40(SP), CX
	XORL 16(SP), CX
	XORL 8(SP), CX
	ROLL $0x01, CX
	MOVL CX, 8(SP)
	MOVL R9, R11
	ROLL $0x05, R11
	MOVL R13, R15
	XORL R14, R15
	XORL R12, R15
	ADDL R15, R11
	ADDL R10, R11
	ADDL $0x6ed9eba1, R11
	ADDL CX, R11
	ROLL $0x1e, R13

	// Round 35.
	MOVL (SP), CX
	XORL 44(SP), CX
	XORL 20(SP), CX
	XORL 12(SP), CX
	ROLL $0x01, CX
	MOVL CX, 12(SP)
	MOVL R11, R10
	ROLL $0x05, R10
	MOVL R9, R15
	XORL R13, R15
	XORL R14, R15
	ADDL R15, R10
	ADDL R12, R10
	ADDL $0x6ed9eba1, R10
	ADDL CX, R10
	ROLL $0x1e, R9

	// Round 36.
	MOVL 4(SP), CX
	XORL 48(SP), CX
	XORL 24(SP), CX
	XORL 16(SP), CX
	ROLL $0x01, CX
	MOVL CX, 16(SP)
	MOVL R10, R12
	ROLL $0x05, R12
	MOVL R11, R15
	XORL R9, R15
	XORL R13, R15
	ADDL R15, R12
	ADDL R14, R12
	ADDL $0x6ed9eba1, R12
	ADDL CX, R12
	ROLL $0x1e, R11

	// Round 37.
	MOVL 8(SP), CX
	XORL 52(SP), CX
	XORL 28(SP), CX
	XORL 20(SP), CX
	ROLL $0x01, CX
	MOVL CX, 20(SP)
	MOVL R12, R14
	ROLL $0x05, R14
	MOVL R10, R15
	XORL R11, R15
	XORL R9, R15
	ADDL R15, R14
	ADDL R13, R14
	ADDL $0x6ed9eba1, R14
	ADDL CX, R14
	ROLL $0x1e, R10

	// Round 38.
	MOVL 12(SP), CX
	XORL 56(SP), CX
	XORL 32(SP), CX
	XORL 24(SP), CX
	ROLL $0x01, CX
	MOVL CX, 24(SP)
	MOVL R14, R13
	ROLL $0x05, R13
	MOVL R12, R15
	XORL R10, R15
	XORL R11, R15
	ADDL R15, R13
	ADDL R9, R13
	ADDL $0x6ed9eba1, R13
	ADDL CX, R13
	ROLL $0x1e, R12

	// Round 39.
	MOVL 16(SP), CX
	XORL 60(SP), CX
	XORL 36(SP), CX
	XORL 28(SP), CX
	ROLL $0x01, CX
	MOVL CX, 28(SP)
	MOVL R13, R9
	ROLL $0x05, R9
	MOVL R14, R15
	XORL R12, R15
	XORL R10, R15
	ADDL R15, R9
	ADDL R11, R9
	ADDL $0x6ed9eba1, R9
	ADDL CX, R9
	ROLL $0x1e, R14

	// Round 40.
	MOVL 20(SP), CX
	XORL (SP), CX
	XORL 40(SP), CX
	XORL 32(SP), CX
	ROLL $0x01, CX
	MOVL CX, 32(SP)
	MOVL R9, R11
	ROLL $0x05, R11
	MOVL R13, R15
	ORL  R14, R15
	ANDL R12, R15
	MOVL R13, BP
	ANDL R14, BP
	ORL  R15, BP
	ADDL BP, R11
	ADDL R10, R11
	ADDL $0x8f1bbcdc, R11
	ADDL CX, R11
	ROLL $0x1e, R13

	// Round 41.
	MOVL 24(SP), CX
	XORL 4(SP), CX
	XORL 44(SP), CX
	XORL 36(SP), CX
	ROLL $0x01, CX
	MOVL CX, 36(SP)
	MOVL R11, R10
	ROLL $0x05, R10
	MOVL R9, R15
	ORL  R13, R15
	ANDL R14, R15
	MOVL R9, BP
	ANDL R13, BP
	ORL  R15, BP
	ADDL BP, R10
	ADDL R12, R10
	ADDL $0x8f1bbcdc, R10
	ADDL CX, R10
	ROLL $0x1e, R9

	// Round 42.
	MOVL 28(SP), CX
	XORL 8(SP), CX
	XORL 48(SP), CX
	XORL 40(SP), CX
	ROLL $0x01, CX
	MOVL CX, 40(SP)
	MOVL R10, R12
	ROLL $0x05, R12
	MOVL R11, R15
	ORL  R9, R15
	ANDL R13, R15
	MOVL R11, BP
	ANDL R9, BP
	ORL  R15, BP
	ADDL BP, R12
	ADDL R14, R12
	ADDL $0x8f1bbcdc, R12
	ADDL CX, R12
	ROLL $0x1e, R11

	// Round 43.
	MOVL 32(SP), CX
	XORL 12(SP), CX
	XORL 52(SP), CX
	XORL 44(SP), CX
	ROLL $0x01, CX
	MOVL CX, 44(SP)
	MOVL R12, R14
	ROLL $0x05, R14
	MOVL R10, R15
	ORL  R11, R15
	ANDL R9, R15
	MOVL R10, BP
	ANDL R11, BP
	ORL  R15, BP
	ADDL BP, R14
	ADDL R13, R14
	ADDL $0x8f1bbcdc, R14
	ADDL CX, R14
	ROLL $0x1e, R10

	// Round 44.
	MOVL 36(SP), CX
	XORL 16(SP), CX
	XORL 56(SP), CX
	XORL 48(SP), CX
	ROLL $0x01, CX
	MOVL CX, 48(SP)
	MOVL R14, R13
	ROLL $0x05, R13
	MOVL R12, R15
	ORL  R10, R15
	ANDL R11, R15
	MOVL R12, BP
	ANDL R10, BP
	ORL  R15, BP
	ADDL BP, R13
	ADDL R9, R13
	ADDL $0x8f1bbcdc, R13
	ADDL CX, R13
	ROLL $0x1e, R12

	// Round 45.
	MOVL 40(SP), CX
	XORL 20(SP), CX
	XORL 60(SP), CX
	XORL 52(SP), CX
	ROLL $0x01, CX
	MOVL CX, 52(SP)
	MOVL R13, R9
	ROLL $0x05, R9
	MOVL R14, R15
	ORL  R12, R15
	ANDL R10, R15
	MOVL R14, BP
	ANDL R12, BP
	ORL  R15, BP
	ADDL BP, R9
	ADDL R11, R9
	ADDL $0x8f1bbcdc, R9
	ADDL CX, R9
	ROLL $0x1e, R14

	// Round 46.
	MOVL 44(SP), CX
	XORL 24(SP), CX
	XORL (SP), CX
	XORL 56(SP), CX
	ROLL $0x01, CX
	MOVL CX, 56(SP)
	MOVL R9, R11
	ROLL $0x05, R11
	MOVL R13, R15
	ORL  R14, R15
	ANDL R12, R15
	MOVL R13, BP
	ANDL R14, BP
	ORL  R15, BP
	ADDL BP, R11
	ADDL R10, R11
	ADDL $0x8f1bbcdc, R11
	ADDL CX, R11
	ROLL $0x1e, R13

	// Round 47.
	MOVL 48(SP), CX
	XORL 28(SP), CX
	XORL 4(SP), CX
	XORL 60(SP), CX
	ROLL $0x01, CX
	MOVL CX, 60(SP)
	MOVL R11, R10
	ROLL $0x05, R10
	MOVL R9, R15
	ORL  R13, R15
	ANDL R14, R15
	MOVL R9, BP
	ANDL R13, BP
	ORL  R15, BP
	ADDL BP, R10
	ADDL R12, R10
	ADDL $0x8f1bbcdc, R10
	ADDL CX, R10
	ROLL $0x1e, R9

	// Round 48.
	MOVL 52(SP), CX
	XORL 32(SP), CX
	XORL 8(SP), CX
	XORL (SP), CX
	ROLL $0x01, CX
	MOVL CX, (SP)
	MOVL R10, R12
	ROLL $0x05, R12
	MOVL R11, R15
	ORL  R9, R15
	ANDL R13, R15
	MOVL R11, BP
	ANDL R9, BP
	ORL  R15, BP
	ADDL BP, R12
	ADDL R14, R12
	ADDL $0x8f1bbcdc, R12
	ADDL CX, R12
	ROLL $0x1e, R11

	// Round 49.
	MOVL 56(SP), CX
	XORL 36(SP), CX
	XORL 12(SP), CX
	XORL 4(SP), CX
	ROLL $0x01, CX
	MOVL CX, 4(SP)
	MOVL R12, R14
	ROLL $0x05, R14
	MOVL R10, R15
	ORL  R11, R15
	ANDL R9, R15
	MOVL R10, BP
	ANDL R11, BP
	ORL  R15, BP
	ADDL BP, R14
	ADDL R13, R14
	ADDL $0x8f1bbcdc, R14
	ADDL CX, R14
	ROLL $0x1e, R10

	// Round 50.
	MOVL 60(SP), CX
	XORL 40(SP), CX
	XORL 16(SP), CX
	XORL 8(SP), CX
	ROLL $0x01, CX
	MOVL CX, 8(SP)
	MOVL R14, R13
	ROLL $0x05, R13
	MOVL R12, R15
	ORL  R10, R15
	ANDL R11, R15
	MOVL R12, BP
	ANDL R10, BP
	ORL  R15, BP
	ADDL BP, R13
	ADDL R9, R13
	ADDL $0x8f1bbcdc, R13
	ADDL CX, R13
	ROLL $0x1e, R12

	// Round 51.
	MOVL (SP), CX
	XORL 44(SP), CX
	XORL 20(SP), CX
	XORL 12(SP), CX
	ROLL $0x01, CX
	MOVL CX, 12(SP)
	MOVL R13, R9
	ROLL $0x05, R9
	MOVL R14, R15
	ORL  R12, R15
	ANDL R10, R15
	MOVL R14, BP
	ANDL R12, BP
	ORL  R15, BP
	ADDL BP, R9
	ADDL R11, R9
	ADDL $0x8f1bbcdc, R9
	ADDL CX, R9
	ROLL $0x1e, R14

	// Round 52.
	MOVL 4(SP), CX
	XORL 48(SP), CX
	XORL 24(SP), CX
	XORL 16(SP), CX
	ROLL $0x01, CX
	MOVL CX, 16(SP)
	MOVL R9, R11
	ROLL $0x05, R11
	MOVL R13, R15
	ORL  R14, R15
	ANDL R12, R15
	MOVL R13, BP
	ANDL R14, BP
	ORL  R15, BP
	ADDL BP, R11
	ADDL R10, R11
	ADDL $0x8f1bbcdc, R11
	ADDL CX, R11
	ROLL $0x1e, R13

	// Round 53.
	MOVL 8(SP), CX
	XORL 52(SP), CX
	XORL 28(SP), CX
	XORL 20(SP), CX
	ROLL $0x01, CX
	MOVL CX, 20(SP)
	MOVL R11, R10
	ROLL $0x05, R10
	MOVL R9, R15
	ORL  R13, R15
	ANDL R14, R15
	MOVL R9, BP
	ANDL R13, BP
	ORL  R15, BP
	ADDL BP, R10
	ADDL R12, R10
	ADDL $0x8f1bbcdc, R10
	ADDL CX, R10
	ROLL $0x1e, R9

	// Round 54.
	MOVL 12(SP), CX
	XORL 56(SP), CX
	XORL 32(SP), CX
	XORL 24(SP), CX
	ROLL $0x01, CX
	MOVL CX, 24(SP)
	MOVL R10, R12
	ROLL $0x05, R12
	MOVL R11, R15
	ORL  R9, R15
	ANDL R13, R15
	MOVL R11, BP
	ANDL R9, BP
	ORL  R15, BP
	ADDL BP, R12
	ADDL R14, R12
	ADDL $0x8f1bbcdc, R12
	ADDL CX, R12
	ROLL $0x1e, R11

	// Round 55.
	MOVL 16(SP), CX
	XORL 60(SP), CX
	XORL 36(SP), CX
	XORL 28(SP), CX
	ROLL $0x01, CX
	MOVL CX, 28(SP)
	MOVL R12, R14
	ROLL $0x05, R14
	MOVL R10, R15
	ORL  R11, R15
	ANDL R9, R15
	MOVL R10, BP
	ANDL R11, BP
	ORL  R15, BP
	ADDL BP, R14
	ADDL R13, R14
	ADDL $0x8f1bbcdc, R14
	ADDL CX, R14
	ROLL $0x1e, R10

	// Round 56.
	MOVL 20(SP), CX
	XORL (SP), CX
	XORL 40(SP), CX
	XORL 32(SP), CX
	ROLL $0x01, CX
	MOVL CX, 32(SP)
	MOVL R14, R13
	ROLL $0x05, R13
	MOVL R12, R15
	ORL  R10, R15
	ANDL R11, R15
	MOVL R12, BP
	ANDL R10, BP
	ORL  R15, BP
	ADDL BP, R13
	ADDL R9, R13
	ADDL $0x8f1bbcdc, R13
	ADDL CX, R13
	ROLL $0x1e, R12

	// Round 57.
	MOVL 24(SP), CX
	XORL 4(SP), CX
	XORL 44(SP), CX
	XORL 36(SP), CX
	ROLL $0x01, CX
	MOVL CX, 36(SP)
	MOVL R13, R9
	ROLL $0x05, R9
	MOVL R14, R15
	ORL  R12, R15
	ANDL R10, R15
	MOVL R14, BP
	ANDL R12, BP
	ORL  R15, BP
	ADDL BP, R9
	ADDL R11, R9
	ADDL $0x8f1bbcdc, R9
	ADDL CX, R9
	ROLL $0x1e, R14

	// Round 58.
	MOVL 28(SP), CX
	XORL 8(SP), CX
	XORL 48(SP), CX
	XORL 40(SP), CX
	ROLL $0x01, CX
	MOVL CX, 40(SP)
	MOVL R9, R11
	ROLL $0x05, R11
	MOVL R13, R15
	ORL  R14, R15
	ANDL R12, R15
	MOVL R13, BP
	ANDL R14, BP
	ORL  R15, BP
	ADDL BP, R11
	ADDL R10, R11
	ADDL $0x8f1bbcdc, R11
	ADDL CX, R11
	ROLL $0x1e, R13

	// Round 59.
	MOVL 32(SP), CX
	XORL 12(SP), CX
	XORL 52(SP), CX
	XORL 44(SP), CX
	ROLL $0x01, CX
	MOVL CX, 44(SP)
	MOVL R11, R10
	ROLL $0x05, R10
	MOVL R9, R15
	ORL  R13, R15
	ANDL R14, R15
	MOVL R9, BP
	ANDL R13, BP
	ORL  R15, BP
	ADDL BP, R10
	ADDL R12, R10
	ADDL $0x8f1bbcdc, R10
	ADDL CX, R10
	ROLL $0x1e, R9

	// Round 60.
	MOVL 36(SP), CX
	XORL 16(SP), CX
	XORL 56(SP), CX
	XORL 48(SP), CX
	ROLL $0x01, CX
	MOVL CX, 48(SP)
	MOVL R10, R12
	ROLL $0x05, R12
	MOVL R11, R15
	XORL R9, R15
	XORL R13, R15
	ADDL R15, R12
	ADDL R14, R12
	ADDL $0xca62c1d6, R12
	ADDL CX, R12
	ROLL $0x1e, R11

	// Round 61.
	MOVL 40(SP), CX
	XORL 20(SP), CX
	XORL 60(SP), CX
	XORL 52(SP), CX
	ROLL $0x01, CX
	MOVL CX, 52(SP)
	MOVL R12, R14
	ROLL $0x05, R14
	MOVL R10, R15
	XORL R11, R15
	XORL R9, R15
	ADDL R15, R14
	ADDL R13, R14
	ADDL $0xca62c1d6, R14
	ADDL CX, R14
	ROLL $0x1e, R10

	// Round 62.
	MOVL 44(SP), CX
	XORL 24(SP), CX
	XORL (SP), CX
	XORL 56(SP), CX
	ROLL $0x01, CX
	MOVL CX, 56(SP)
	MOVL R14, R13
	ROLL $0x05, R13
	MOVL R12, R15
	XORL R10, R15
	XORL R11, R15
	ADDL R15, R13
	ADDL R9, R13
	ADDL $0xca62c1d6, R13
	ADDL CX, R13
	ROLL $0x1e, R12

	// Round 63.
	MOVL 48(SP), CX
	XORL 28(SP), CX
	XORL 4(SP), CX
	XORL 60(SP), CX
	ROLL $0x01, CX
	MOVL CX, 60(SP)
	MOVL R13, R9
	ROLL $0x05, R9
	MOVL R14, R15
	XORL R12, R15
	XORL R10, R15
	ADDL R15, R9
	ADDL R11, R9
	ADDL $0xca62c1d6, R9
	ADDL CX, R9
	ROLL $0x1e, R14

	// Round 64.
	MOVL 52(SP), CX
	XORL 32(SP), CX
	XORL 8(SP), CX
	XORL (SP), CX
	ROLL $0x01, CX
	MOVL CX, (SP)
	MOVL R9, R11
	ROLL $0x05, R11
	MOVL R13, R15
	XORL R14, R15
	XORL R12, R15
	ADDL R15, R11
	ADDL R10, R11
	ADDL $0xca62c1d6, R11
	ADDL CX, R11
	ROLL $0x1e, R13

	// Round 65.
	MOVL 56(SP), CX
	XORL 36(SP), CX
	XORL 12(SP), CX
	XORL 4(SP), CX
	ROLL $0x01, CX
	MOVL CX, 4(SP)
	MOVL R11, R10
	ROLL $0x05, R10
	MOVL R9, R15
	XORL R13, R15
	XORL R14, R15
	ADDL R15, R10
	ADDL R12, R10
	ADDL $0xca62c1d6, R10
	ADDL CX, R10
	ROLL $0x1e, R9

	// Round 66.
	MOVL 60(SP), CX
	XORL 40(SP), CX
	XORL 16(SP), CX
	XORL 8(SP), CX
	ROLL $0x01, CX
	MOVL CX, 8(SP)
	MOVL R10, R12
	ROLL $0x05, R12
	MOVL R11, R15
	XORL R9, R15
	XORL R13, R15
	ADDL R15, R12
	ADDL R14, R12
	ADDL $0xca62c1d6, R12
	ADDL CX, R12
	ROLL $0x1e, R11

	// Round 67.
	MOVL (SP), CX
	XORL 44(SP), CX
	XORL 20(SP), CX
	XORL 12(SP), CX
	ROLL $0x01, CX
	MOVL CX, 12(SP)
	MOVL R12, R14
	ROLL $0x05, R14
	MOVL R10, R15
	XORL R11, R15
	XORL R9, R15
	ADDL R15, R14
	ADDL R13, R14
	ADDL $0xca62c1d6, R14
	ADDL CX, R14
	ROLL $0x1e, R10

	// Round 68.
	MOVL 4(SP), CX
	XORL 48(SP), CX
	XORL 24(SP), CX
	XORL 16(SP), CX
	ROLL $0x01, CX
	MOVL CX, 16(SP)
	MOVL R14, R13
	ROLL $0x05, R13
	MOVL R12, R15
	XORL R10, R15
	XORL R11, R15
	ADDL R15, R13
	ADDL R9, R13
	ADDL $0xca62c1d6, R13
	ADDL CX, R13
	ROLL $0x1e, R12

	// Round 69.
	MOVL 8(SP), CX
	XORL 52(SP), CX
	XORL 28(SP), CX
	XORL 20(SP), CX
	ROLL $0x01, CX
	MOVL CX, 20(SP)
	MOVL R13, R9
	ROLL $0x05, R9
	MOVL R14, R15
	XORL R12, R15
	XORL R10, R15
	ADDL R15, R9
	ADDL R11, R9
	ADDL $0xca62c1d6, R9
	ADDL CX, R9
	ROLL $0x1e, R14

	// Round 70.
	MOVL 12(SP), CX
	XORL 56(SP), CX
	XORL 32(SP), CX
	XORL 24(SP), CX
	ROLL $0x01, CX
	MOVL CX, 24(SP)
	MOVL R9, R11
	ROLL $0x05, R11
	MOVL R13, R15
	XORL R14, R15
	XORL R12, R15
	ADDL R15, R11
	ADDL R10, R11
	ADDL $0xca62c1d6, R11
	ADDL CX, R11
	ROLL $0x1e, R13

	// Round 71.
	MOVL 16(SP), CX
	XORL 60(SP), CX
	XORL 36(SP), CX
	XORL 28(SP), CX
	ROLL $0x01, CX
	MOVL CX, 28(SP)
	MOVL R11, R10
	ROLL $0x05, R10
	MOVL R9, R15
	XORL R13, R15
	XORL R14, R15
	ADDL R15, R10
	ADDL R12, R10
	ADDL $0xca62c1d6, R10
	ADDL CX, R10
	ROLL $0x1e, R9

	// Round 72.
	MOVL 20(SP), CX
	XORL (SP), CX
	XORL 40(SP), CX
	XORL 32(SP), CX
	ROLL $0x01, CX
	MOVL CX, 32(SP)
	MOVL R10, R12
	ROLL $0x05, R12
	MOVL R11, R15
	XORL R9, R15
	XORL R13, R15
	ADDL R15, R12
	ADDL R14, R12
	ADDL $0xca62c1d6, R12
	ADDL CX, R12
	ROLL $0x1e, R11

	// Round 73.
	MOVL 24(SP), CX
	XORL 4(SP), CX
	XORL 44(SP), CX
	XORL 36(SP), CX
	ROLL $0x01, CX
	MOVL CX, 36(SP)
	MOVL R12, R14
	ROLL $0x05, R14
	MOVL R10, R15
	XORL R11, R15
	XORL R9, R15
	ADDL R15, R14
	ADDL R13, R14
	ADDL $0xca62c1d6, R14
	ADDL CX, R14
	ROLL $0x1e, R10

	// Round 74.
	MOVL 28(SP), CX
	XORL 8(SP), CX
	XORL 48(SP), CX
	XORL 40(SP), CX
	ROLL $0x01, CX
	MOVL CX, 40(SP)
	MOVL R14, R13
	ROLL $0x05, R13
	MOVL R12, R15
	XORL R10, R15
	XORL R11, R15
	ADDL R15, R13
	ADDL R9, R13
	ADDL $0xca62c1d6, R13
	ADDL CX, R13
	ROLL $0x1e, R12

	// Round 75.
	MOVL 32(SP), CX
	XORL 12(SP), CX
	XORL 52(SP), CX
	XORL 44(SP), CX
	ROLL $0x01, CX
	MOVL CX, 44(SP)
	MOVL R13, R9
	ROLL $0x05, R9
	MOVL R14, R15
	XORL R12, R15
	XORL R10, R15
	ADDL R15, R9
	ADDL R11, R9
	ADDL $0xca62c1d6, R9
	ADDL CX, R9
	ROLL $0x1e, R14

	// Round 76.
	MOVL 36(SP), CX
	XORL 16(SP), CX
	XORL 56(SP), CX
	XORL 48(SP), CX
	ROLL $0x01, CX
	MOVL CX, 48(SP)
	MOVL R9, R11
	ROLL $0x05, R11
	MOVL R13, R15
	XORL R14, R15
	XORL R12, R15
	ADDL R15, R11
	ADDL R10, R11
	ADDL $0xca62c1d6, R11
	ADDL CX, R11
	ROLL $0x1e, R13

	// Round 77.
	MOVL 40(SP), CX
	XORL 20(SP), CX
	XORL 60(SP), CX
	XORL 52(SP), CX
	ROLL $0x01, CX
	MOVL CX, 52(SP)
	MOVL R11, R10
	ROLL $0x05, R10
	MOVL R9, R15
	XORL R13, R15
	XORL R14, R15
	ADDL R15, R10
	ADDL R12, R10
	ADDL $0xca62c1d6, R10
	ADDL CX, R10
	ROLL $0x1e, R9

	// Round 78.
	MOVL 44(SP), CX
	XORL 24(SP), CX
	XORL (SP), CX
	XORL 56(SP), CX
	ROLL $0x01, CX
	MOVL CX, 56(SP)
	MOVL R10, R12
	ROLL $0x05, R12
	MOVL R11, R15
	XORL R9, R15
	XORL R13, R15
	ADDL R15, R12
	ADDL R14, R12
	ADDL $0xca62c1d6, R12
	ADDL CX, R12
	ROLL $0x1e, R11

	// Round 79.
	MOVL 48(SP), CX
	XORL 28(SP), CX
	XORL 4(SP), CX
	XORL 60(SP), CX
	ROLL $0x01, CX
	MOVL CX, 60(SP)
	MOVL R12, R14
	ROLL $0x05, R14
	MOVL R10, R15
	XORL R11, R15
	XORL R9, R15
	ADDL R15, R14
	ADDL R13, R14
	ADDL $0xca62c1d6, R14
	ADDL CX, R14
	ROLL $0x1e, R10

	// Final add.
	ADDL R14, DX
	ADDL R12, BX
	ADDL R10, SI
	ADDL R11, DI
	ADDL R9, R8

	// Store results back.
	MOVL DX, (AX)
	MOVL BX, 4(AX)
	MOVL SI, 8(AX)
	MOVL DI, 12(AX)
	MOVL R8, 16(AX)
	RET
