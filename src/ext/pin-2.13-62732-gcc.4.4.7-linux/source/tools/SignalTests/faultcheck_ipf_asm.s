/*
 * void DoUnalign()
 */
    .text
    .align 16
    .global DoUnalign
    .proc DoUnalign
DoUnalign:
    .prologue
    .body

    // Set UM.ac (alignment check).  This should force an unaligned access to fault.
    //
    mov r14 = psr.um;;
    or r14 = 0x8, r14;;
    mov psr.um = r14;;

    movl r14 = Var+1;;
    st8 [r14] = r14         // Do an unaligned access
    br.ret.sptk.many b0;;
    .endp DoUnalign


    .data
    .align 8
Var:
    .long 0


/*
 * void DoIllegal()
 */
    .text
    .align 16
    .global DoIllegal
    .proc DoIllegal
DoIllegal:
    .prologue
    .body
    nop 0;;
    nop 1;;
    nop 2;;
    mov ar.bsp = r0;;   // This is an illegal instruction.
    nop 0;;
    nop 1;;
    nop 2;;
    br.ret.sptk.many b0;;
    .endp DoIllegal


/*
 * void DoDiv0()
 */
    .text
    .align 16
    .global DoDiv0
    .proc DoDiv0
DoDiv0:
    .prologue
    .body

    // Clear all the trap bits in FPSR, which enables all FP exceptions.
    //
    mov r14 = ar.fpsr;;
    nop 0;;
    nop 1;;
    nop 2;;
    dep r14 = 0, r14, 0, 6;;
    nop 0;;
    nop 1;;
    nop 2;;
    mov ar.fpsr = r14;
    nop 0;;
    nop 1;;
    nop 2;;

    frcpa f6, p6 = f1, f0   // Divide by zero

    // The "zero divide" exception should be delivered with PC at the 'frcpa' instruction.

    br.ret.sptk.many b0;;
    .endp DoDiv0


/*
 * void DoInexact()
 */
    .text
    .align 16
    .global DoInexact
    .proc DoInexact
DoInexact:
    .prologue
    .body

    // Clear all the trap bits in FPSR, which enables all FP exceptions.
    //
    mov r14 = ar.fpsr;;
    nop 0;;
    nop 1;;
    nop 2;;
    dep r14 = 0, r14, 0, 6;;
    nop 0;;
    nop 1;;
    nop 2;;
    mov ar.fpsr = r14;
    nop 0;;
    nop 1;;
    nop 2;;

    movl    r14 = 0x3fe0000000000000;;  // r14 = 0.5
    setf.d  f6 = r14;;                  // f6 = 0.5
    fcvt.fx f6 = f6                     // convert to integer, raise "inexact" fault

    // The "inexact" exception should be delivered wit PC at the instruction following 'fcvt.fx'.

    br.ret.sptk.many b0;;
    .endp DoInexact


/*
 * void DoBreak()
 */
    .text
    .align 16
    .global DoBreak
    .proc DoBreak
DoBreak:
    .prologue
    .body
    break 0xccccc
    .endp DoBreak
