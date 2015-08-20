  .text
  .globl __newlib_thread_init
  .type __newlib_thread_init, @function

#! file-offset 0x15e740
#! rip-offset  0x11e740
#! capacity    96 bytes

# Text                            #  Line  RIP       Bytes  Opcode              
.__newlib_thread_init:            #        0x11e740  0      OPC=<label>         
  pushq %rbx                      #  1     0x11e740  1      OPC=pushq_r64_1     
  nop                             #  2     0x11e741  1      OPC=nop             
  nop                             #  3     0x11e742  1      OPC=nop             
  nop                             #  4     0x11e743  1      OPC=nop             
  nop                             #  5     0x11e744  1      OPC=nop             
  nop                             #  6     0x11e745  1      OPC=nop             
  nop                             #  7     0x11e746  1      OPC=nop             
  nop                             #  8     0x11e747  1      OPC=nop             
  nop                             #  9     0x11e748  1      OPC=nop             
  nop                             #  10    0x11e749  1      OPC=nop             
  nop                             #  11    0x11e74a  1      OPC=nop             
  nop                             #  12    0x11e74b  1      OPC=nop             
  nop                             #  13    0x11e74c  1      OPC=nop             
  nop                             #  14    0x11e74d  1      OPC=nop             
  nop                             #  15    0x11e74e  1      OPC=nop             
  nop                             #  16    0x11e74f  1      OPC=nop             
  nop                             #  17    0x11e750  1      OPC=nop             
  nop                             #  18    0x11e751  1      OPC=nop             
  nop                             #  19    0x11e752  1      OPC=nop             
  nop                             #  20    0x11e753  1      OPC=nop             
  nop                             #  21    0x11e754  1      OPC=nop             
  nop                             #  22    0x11e755  1      OPC=nop             
  nop                             #  23    0x11e756  1      OPC=nop             
  nop                             #  24    0x11e757  1      OPC=nop             
  nop                             #  25    0x11e758  1      OPC=nop             
  nop                             #  26    0x11e759  1      OPC=nop             
  nop                             #  27    0x11e75a  1      OPC=nop             
  callq .__nacl_read_tp           #  28    0x11e75b  5      OPC=callq_label     
  movq %rax, %rbx                 #  29    0x11e760  3      OPC=movq_r64_r64    
  nop                             #  30    0x11e763  1      OPC=nop             
  nop                             #  31    0x11e764  1      OPC=nop             
  nop                             #  32    0x11e765  1      OPC=nop             
  nop                             #  33    0x11e766  1      OPC=nop             
  nop                             #  34    0x11e767  1      OPC=nop             
  nop                             #  35    0x11e768  1      OPC=nop             
  nop                             #  36    0x11e769  1      OPC=nop             
  nop                             #  37    0x11e76a  1      OPC=nop             
  nop                             #  38    0x11e76b  1      OPC=nop             
  nop                             #  39    0x11e76c  1      OPC=nop             
  nop                             #  40    0x11e76d  1      OPC=nop             
  nop                             #  41    0x11e76e  1      OPC=nop             
  nop                             #  42    0x11e76f  1      OPC=nop             
  nop                             #  43    0x11e770  1      OPC=nop             
  nop                             #  44    0x11e771  1      OPC=nop             
  nop                             #  45    0x11e772  1      OPC=nop             
  nop                             #  46    0x11e773  1      OPC=nop             
  nop                             #  47    0x11e774  1      OPC=nop             
  nop                             #  48    0x11e775  1      OPC=nop             
  nop                             #  49    0x11e776  1      OPC=nop             
  nop                             #  50    0x11e777  1      OPC=nop             
  nop                             #  51    0x11e778  1      OPC=nop             
  nop                             #  52    0x11e779  1      OPC=nop             
  nop                             #  53    0x11e77a  1      OPC=nop             
  callq .__nacl_read_tp           #  54    0x11e77b  5      OPC=callq_label     
  addq $0xfffffb88, %rax          #  55    0x11e780  6      OPC=addq_rax_imm32  
  movl %ebx, %ebx                 #  56    0x11e786  2      OPC=movl_r32_r32    
  movl %eax, -0x480(%r15,%rbx,1)  #  57    0x11e788  8      OPC=movl_m32_r32    
  popq %rbx                       #  58    0x11e790  1      OPC=popq_r64_1      
  popq %r11                       #  59    0x11e791  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d         #  60    0x11e793  7      OPC=andl_r32_imm32  
  nop                             #  61    0x11e79a  1      OPC=nop             
  nop                             #  62    0x11e79b  1      OPC=nop             
  nop                             #  63    0x11e79c  1      OPC=nop             
  nop                             #  64    0x11e79d  1      OPC=nop             
  addq %r15, %r11                 #  65    0x11e79e  3      OPC=addq_r64_r64    
  jmpq %r11                       #  66    0x11e7a1  3      OPC=jmpq_r64        
  nop                             #  67    0x11e7a4  1      OPC=nop             
  nop                             #  68    0x11e7a5  1      OPC=nop             
  nop                             #  69    0x11e7a6  1      OPC=nop             
                                                                                
.size __newlib_thread_init, .-__newlib_thread_init

