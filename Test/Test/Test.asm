/*
 * Test.asm
 *
 *  Created: 22/09/15 22:02:50
 *   Author: Dorin
 */ 

LDI R16, 0
LDI R17, 0x5F
OUT EEARH, R16
OUT EEARL, R17

SBI EECR, 0
IN R18, EEDR
CBI EECR, 0

INC R18

OUT DDRA, R18

OUT EEDR, R18
SBI EECR, 2
SBI EECR, 1

HERE: JMP HERE

LOADIO PORTA, 0x20

.MACRO LOADIO
	LDI R20, @1
	OUT @0, R20
.ENDMACRO

.LISTMAC