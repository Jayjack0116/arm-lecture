	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	@ ADD/MODIFY CODE BELOW
	@ PROLOG
	push {r3, r4, r5, lr}

	@ R4 = R0 - 0 (update flags)
	subs r4, r0, #0;

	@ if(R0 <= 0) goto .L3 (which returns 0)
	ble .L3;

	@ Compare R4 wtih 1
	cmp r4, #1;

	@ If R4 == 1 goto .L4 (which returns 1)
	beq .L4;
	mov r4, r0;
	mov r3, #0;
	mov r5, #1;

for:
	@ R0 = R3 + R5
	adds r0, r3, r5;

	@ R3 = R5
	mov r3, r5;

	@ R5 = R0
	mov r5, r0;

	@ R4 = R4 - 1
	subs r4, r4, #1;

	@ If R4 > 1 goto for
	cmp r4, #1;
	bgt for;

	pop {r3, r4, r5, pc}		@EPILOG

	@ END CODE MODIFICATION
.L3:
	mov r0, #0			@ R0 = 0
	pop {r3, r4, r5, pc}		@ EPILOG

.L4:
	mov r0, #1			@ R0 = 1
	pop {r3, r4, r5, pc}		@ EPILOG

	.size fibonacci, .-fibonacci
	.end
