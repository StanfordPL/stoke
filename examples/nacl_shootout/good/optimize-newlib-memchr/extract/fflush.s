  .text
  .globl fflush
  .type fflush, @function

#! file-offset 0x15aaa0
#! rip-offset  0x11aaa0
#! capacity    96 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.fflush:                      #        0x11aaa0  0      OPC=<label>         
  pushq %rbx                  #  1     0x11aaa0  1      OPC=pushq_r64_1     
  movl %edi, %ebx             #  2     0x11aaa1  2      OPC=movl_r32_r32    
  testq %rbx, %rbx            #  3     0x11aaa3  3      OPC=testq_r64_r64   
  je .L_11aae0                #  4     0x11aaa6  2      OPC=je_label        
  nop                         #  5     0x11aaa8  1      OPC=nop             
  nop                         #  6     0x11aaa9  1      OPC=nop             
  nop                         #  7     0x11aaaa  1      OPC=nop             
  nop                         #  8     0x11aaab  1      OPC=nop             
  nop                         #  9     0x11aaac  1      OPC=nop             
  nop                         #  10    0x11aaad  1      OPC=nop             
  nop                         #  11    0x11aaae  1      OPC=nop             
  nop                         #  12    0x11aaaf  1      OPC=nop             
  nop                         #  13    0x11aab0  1      OPC=nop             
  nop                         #  14    0x11aab1  1      OPC=nop             
  nop                         #  15    0x11aab2  1      OPC=nop             
  nop                         #  16    0x11aab3  1      OPC=nop             
  nop                         #  17    0x11aab4  1      OPC=nop             
  nop                         #  18    0x11aab5  1      OPC=nop             
  nop                         #  19    0x11aab6  1      OPC=nop             
  nop                         #  20    0x11aab7  1      OPC=nop             
  nop                         #  21    0x11aab8  1      OPC=nop             
  nop                         #  22    0x11aab9  1      OPC=nop             
  nop                         #  23    0x11aaba  1      OPC=nop             
  callq .__nacl_read_tp       #  24    0x11aabb  5      OPC=callq_label     
  leaq -0x480(%rax), %rax     #  25    0x11aac0  7      OPC=leaq_r64_m16    
  movl %ebx, %esi             #  26    0x11aac7  2      OPC=movl_r32_r32    
  popq %rbx                   #  27    0x11aac9  1      OPC=popq_r64_1      
  movl %eax, %eax             #  28    0x11aaca  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi    #  29    0x11aacc  4      OPC=movl_r32_m32    
  jmpq ._fflush_r             #  30    0x11aad0  5      OPC=jmpq_label_1    
  nop                         #  31    0x11aad5  1      OPC=nop             
  nop                         #  32    0x11aad6  1      OPC=nop             
  nop                         #  33    0x11aad7  1      OPC=nop             
  nop                         #  34    0x11aad8  1      OPC=nop             
  nop                         #  35    0x11aad9  1      OPC=nop             
  nop                         #  36    0x11aada  1      OPC=nop             
  nop                         #  37    0x11aadb  1      OPC=nop             
  nop                         #  38    0x11aadc  1      OPC=nop             
  nop                         #  39    0x11aadd  1      OPC=nop             
  nop                         #  40    0x11aade  1      OPC=nop             
  nop                         #  41    0x11aadf  1      OPC=nop             
.L_11aae0:                    #        0x11aae0  0      OPC=<label>         
  popq %rbx                   #  42    0x11aae0  1      OPC=popq_r64_1      
  movl 0xff262f9(%rip), %edi  #  43    0x11aae1  6      OPC=movl_r32_m32    
  movl $0x11a920, %esi        #  44    0x11aae7  5      OPC=movl_r32_imm32  
  jmpq ._fwalk_reent          #  45    0x11aaec  5      OPC=jmpq_label_1    
  nop                         #  46    0x11aaf1  1      OPC=nop             
  nop                         #  47    0x11aaf2  1      OPC=nop             
  nop                         #  48    0x11aaf3  1      OPC=nop             
  nop                         #  49    0x11aaf4  1      OPC=nop             
  nop                         #  50    0x11aaf5  1      OPC=nop             
  nop                         #  51    0x11aaf6  1      OPC=nop             
  nop                         #  52    0x11aaf7  1      OPC=nop             
  nop                         #  53    0x11aaf8  1      OPC=nop             
  nop                         #  54    0x11aaf9  1      OPC=nop             
  nop                         #  55    0x11aafa  1      OPC=nop             
  nop                         #  56    0x11aafb  1      OPC=nop             
  nop                         #  57    0x11aafc  1      OPC=nop             
  nop                         #  58    0x11aafd  1      OPC=nop             
  nop                         #  59    0x11aafe  1      OPC=nop             
  nop                         #  60    0x11aaff  1      OPC=nop             
                                                                            
.size fflush, .-fflush

