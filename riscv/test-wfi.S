.section .text
.align 2
.global _start

_start:
	csrr	t0, mstatus
	li	t0, 0x2004000	// Disable timer interrupt
	li	t1, 0xFFFFFFFFFFFFFFFF
	sd	t1, 0x0(t0)

switch_thread:
	csrr	t0, mhartid
	beqz	t0, thread_master
	j	thread_slave

.align 2
interrupt_handler:
	csrr	t0, mstatus
	csrr	a0, mip
	csrr	a1, mcause
	csrr	a0, mepc
	li	t0, 0x2000000	// Clear IPI to core 0
	li	t1, 0
	sd	t1, 0x0(t0)
	csrr	a0, mip
	mret

/*
 * Thread for core 1:
 *   Send IPI to core 0 twice
 */
thread_slave:
	addi	a0, a0, 0
	addi	a1, a1, 1
	addi	a2, a2, 2
	addi	a3, a3, 3
	addi	a4, a4, 4
	addi	a5, a5, 5
	addi	a6, a6, 6
	addi	a7, a7, 7
	addi	a0, a0, 0
	addi	a1, a1, 1
	addi	a2, a2, 2
	addi	a3, a3, 3
	addi	a4, a4, 4
	addi	a5, a5, 5
	addi	a6, a6, 6
	addi	a7, a7, 7
	addi	a0, a0, 0
	addi	a1, a1, 1
	addi	a2, a2, 2
	addi	a3, a3, 3
	addi	a4, a4, 4
	addi	a5, a5, 5
	addi	a6, a6, 6
	addi	a7, a7, 7
	addi	a0, a0, 0
	addi	a1, a1, 1
	addi	a2, a2, 2
	addi	a3, a3, 3
	addi	a4, a4, 4
	addi	a5, a5, 5
	addi	a6, a6, 6
	addi	a7, a7, 7
	addi	a0, a0, 0
	addi	a1, a1, 1
	addi	a2, a2, 2
	addi	a3, a3, 3
	addi	a4, a4, 4
	addi	a5, a5, 5
	addi	a6, a6, 6
	addi	a7, a7, 7
	addi	a0, a0, 0
	addi	a1, a1, 1
	addi	a2, a2, 2
	addi	a3, a3, 3
	addi	a4, a4, 4
	addi	a5, a5, 5
	addi	a6, a6, 6
	addi	a7, a7, 7
slave_send_ipi_1st:
	li	t0, 0x2000000	// Send IPI to core 0
	li	t1, 1
	sd	t1, 0x0(t0)
	addi	a0, a0, 0
	addi	a1, a1, 1
	addi	a2, a2, 2
	addi	a3, a3, 3
	addi	a4, a4, 4
	addi	a5, a5, 5
	addi	a6, a6, 6
	addi	a7, a7, 7
	addi	a0, a0, 0
	addi	a1, a1, 1
	addi	a2, a2, 2
	addi	a3, a3, 3
	addi	a4, a4, 4
	addi	a5, a5, 5
	addi	a6, a6, 6
	addi	a7, a7, 7
	addi	a0, a0, 0
	addi	a1, a1, 1
	addi	a2, a2, 2
	addi	a3, a3, 3
	addi	a4, a4, 4
	addi	a5, a5, 5
	addi	a6, a6, 6
	addi	a7, a7, 7
	addi	a0, a0, 0
	addi	a1, a1, 1
	addi	a2, a2, 2
	addi	a3, a3, 3
	addi	a4, a4, 4
	addi	a5, a5, 5
	addi	a6, a6, 6
	addi	a7, a7, 7
	addi	a0, a0, 0
	addi	a1, a1, 1
	addi	a2, a2, 2
	addi	a3, a3, 3
	addi	a4, a4, 4
	addi	a5, a5, 5
	addi	a6, a6, 6
	addi	a7, a7, 7
slave_send_ipi_2nd:
	li	t0, 0x2000000	// Send IPI to core 0
	li	t1, 1
	sd	t1, 0x0(t0)
	addi	a0, a0, 0
	addi	a1, a1, 1
	addi	a2, a2, 2
	addi	a3, a3, 3
	addi	a4, a4, 4
	addi	a5, a5, 5
	addi	a6, a6, 6
	addi	a7, a7, 7
	addi	a0, a0, 0
	addi	a1, a1, 1
	addi	a2, a2, 2
	addi	a3, a3, 3
	addi	a4, a4, 4
	addi	a5, a5, 5
	addi	a6, a6, 6
	addi	a7, a7, 7
	j spike_exit

/*
 * Thread for core 0: 
 *   Execute WFI under various condition
 */
thread_master:
	/* Prepare */
	// Install interrupt handler
	la	t0, interrupt_handler
	csrw	mtvec, t0
	// Enable software interrupt
	li	t0, 0x8
	csrw	mie, t0
	nop

	/* Test 1: WFI with mstatus.MIE = 1 */
	csrr	t0, mstatus
	li	t1, 0x8
	or	t0, t0, t1
	csrw	mstatus, t0
	addi	a0, a0, 0
	addi	a1, a1, 1
	addi	a2, a2, 2
	addi	a3, a3, 3
	addi	a4, a4, 4
	addi	a5, a5, 5
	addi	a6, a6, 6
	addi	a7, a7, 7
	nop
	wfi
	addi	t1, t1, 1
	addi	t2, t2, 2
	addi	t3, t3, 3
	csrr	t0, mstatus
	csrr	t0, mip
	csrr	t0, mcause
	csrr	t0, mepc
	nop


	/* Test 2: WFI with mstatus.MIE = 0 */
	csrr	t0, mstatus
	li	t1, 0xFFFFFFFFFFFFFFF7
	and	t0, t0, t1
	csrw	mstatus, t0
	addi	a0, a0, 0
	addi	a1, a1, 1
	addi	a2, a2, 2
	addi	a3, a3, 3
	addi	a4, a4, 4
	addi	a5, a5, 5
	addi	a6, a6, 6
	addi	a7, a7, 7
	nop
	wfi
	addi	t1, t1, 1
	addi	t2, t2, 2
	addi	t3, t3, 3
	csrr	t0, mstatus
	csrr	t0, mip
	csrr	t0, mcause
	csrr	t0, mepc
	nop

	/* Test 3: WFI with mstatus.MIE = 0 but no IPI received */
	li	t0, 0x2000000	// Clear IPI to core 0 in last test
	li	t1, 0
	sd	t1, 0x0(t0)

	csrr	t0, mstatus
	li	t1, 0xFFFFFFFFFFFFFFF7
	and	t0, t0, t1
	csrw	mstatus, t0
	addi	a0, a0, 0
	addi	a1, a1, 1
	addi	a2, a2, 2
	addi	a3, a3, 3
	addi	a4, a4, 4
	addi	a5, a5, 5
	addi	a6, a6, 6
	addi	a7, a7, 7
	nop
	wfi
	addi	t1, t1, 1
	addi	t2, t2, 2
	addi	t3, t3, 3
	csrr	t0, mstatus
	csrr	t0, mip
	csrr	t0, mcause
	csrr	t0, mepc
	nop

	j spike_exit


spike_exit:
	nop
	nop
	j	spike_exit	

