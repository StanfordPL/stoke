  .text
  .globl iswupper
  .type iswupper, @function

#! file-offset 0x1604c0
#! rip-offset  0x1204c0
#! capacity    64 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.iswupper:                 #        0x1204c0  0      OPC=<label>         
  pushq %rbx               #  1     0x1204c0  1      OPC=pushq_r64_1     
  movl %edi, %ebx          #  2     0x1204c1  2      OPC=movl_r32_r32    
  nop                      #  3     0x1204c3  1      OPC=nop             
  nop                      #  4     0x1204c4  1      OPC=nop             
  nop                      #  5     0x1204c5  1      OPC=nop             
  nop                      #  6     0x1204c6  1      OPC=nop             
  nop                      #  7     0x1204c7  1      OPC=nop             
  nop                      #  8     0x1204c8  1      OPC=nop             
  nop                      #  9     0x1204c9  1      OPC=nop             
  nop                      #  10    0x1204ca  1      OPC=nop             
  nop                      #  11    0x1204cb  1      OPC=nop             
  nop                      #  12    0x1204cc  1      OPC=nop             
  nop                      #  13    0x1204cd  1      OPC=nop             
  nop                      #  14    0x1204ce  1      OPC=nop             
  nop                      #  15    0x1204cf  1      OPC=nop             
  nop                      #  16    0x1204d0  1      OPC=nop             
  nop                      #  17    0x1204d1  1      OPC=nop             
  nop                      #  18    0x1204d2  1      OPC=nop             
  nop                      #  19    0x1204d3  1      OPC=nop             
  nop                      #  20    0x1204d4  1      OPC=nop             
  nop                      #  21    0x1204d5  1      OPC=nop             
  nop                      #  22    0x1204d6  1      OPC=nop             
  nop                      #  23    0x1204d7  1      OPC=nop             
  nop                      #  24    0x1204d8  1      OPC=nop             
  nop                      #  25    0x1204d9  1      OPC=nop             
  nop                      #  26    0x1204da  1      OPC=nop             
  callq .towlower          #  27    0x1204db  5      OPC=callq_label     
  cmpl %ebx, %eax          #  28    0x1204e0  2      OPC=cmpl_r32_r32    
  popq %rbx                #  29    0x1204e2  1      OPC=popq_r64_1      
  popq %r11                #  30    0x1204e3  2      OPC=popq_r64_1      
  setne %al                #  31    0x1204e5  3      OPC=setne_r8        
  movzbl %al, %eax         #  32    0x1204e8  3      OPC=movzbl_r32_r8   
  andl $0xffffffe0, %r11d  #  33    0x1204eb  7      OPC=andl_r32_imm32  
  nop                      #  34    0x1204f2  1      OPC=nop             
  nop                      #  35    0x1204f3  1      OPC=nop             
  nop                      #  36    0x1204f4  1      OPC=nop             
  nop                      #  37    0x1204f5  1      OPC=nop             
  addq %r15, %r11          #  38    0x1204f6  3      OPC=addq_r64_r64    
  jmpq %r11                #  39    0x1204f9  3      OPC=jmpq_r64        
  nop                      #  40    0x1204fc  1      OPC=nop             
  nop                      #  41    0x1204fd  1      OPC=nop             
  nop                      #  42    0x1204fe  1      OPC=nop             
  nop                      #  43    0x1204ff  1      OPC=nop             
  nop                      #  44    0x120500  1      OPC=nop             
  nop                      #  45    0x120501  1      OPC=nop             
  nop                      #  46    0x120502  1      OPC=nop             
  nop                      #  47    0x120503  1      OPC=nop             
  nop                      #  48    0x120504  1      OPC=nop             
  nop                      #  49    0x120505  1      OPC=nop             
  nop                      #  50    0x120506  1      OPC=nop             
                                                                         
.size iswupper, .-iswupper

