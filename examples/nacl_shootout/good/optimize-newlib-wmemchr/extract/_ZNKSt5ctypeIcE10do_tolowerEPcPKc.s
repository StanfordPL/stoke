  .text
  .globl _ZNKSt5ctypeIcE10do_tolowerEPcPKc
  .type _ZNKSt5ctypeIcE10do_tolowerEPcPKc, @function

#! file-offset 0x124ea0
#! rip-offset  0xe4ea0
#! capacity    128 bytes

# Text                               #  Line  RIP      Bytes  Opcode              
._ZNKSt5ctypeIcE10do_tolowerEPcPKc:  #        0xe4ea0  0      OPC=<label>         
  pushq %r13                         #  1     0xe4ea0  2      OPC=pushq_r64_1     
  movl %edx, %r13d                   #  2     0xe4ea2  3      OPC=movl_r32_r32    
  pushq %r12                         #  3     0xe4ea5  2      OPC=pushq_r64_1     
  movl %edi, %r12d                   #  4     0xe4ea7  3      OPC=movl_r32_r32    
  pushq %rbx                         #  5     0xe4eaa  1      OPC=pushq_r64_1     
  movl %esi, %ebx                    #  6     0xe4eab  2      OPC=movl_r32_r32    
  cmpl %r13d, %ebx                   #  7     0xe4ead  3      OPC=cmpl_r32_r32    
  jae .L_e4f00                       #  8     0xe4eb0  2      OPC=jae_label       
  nop                                #  9     0xe4eb2  1      OPC=nop             
  nop                                #  10    0xe4eb3  1      OPC=nop             
  nop                                #  11    0xe4eb4  1      OPC=nop             
  nop                                #  12    0xe4eb5  1      OPC=nop             
  nop                                #  13    0xe4eb6  1      OPC=nop             
  nop                                #  14    0xe4eb7  1      OPC=nop             
  nop                                #  15    0xe4eb8  1      OPC=nop             
  nop                                #  16    0xe4eb9  1      OPC=nop             
  nop                                #  17    0xe4eba  1      OPC=nop             
  nop                                #  18    0xe4ebb  1      OPC=nop             
  nop                                #  19    0xe4ebc  1      OPC=nop             
  nop                                #  20    0xe4ebd  1      OPC=nop             
  nop                                #  21    0xe4ebe  1      OPC=nop             
  nop                                #  22    0xe4ebf  1      OPC=nop             
.L_e4ec0:                            #        0xe4ec0  0      OPC=<label>         
  movl %r12d, %r12d                  #  23    0xe4ec0  3      OPC=movl_r32_r32    
  movl (%r15,%r12,1), %eax           #  24    0xe4ec3  4      OPC=movl_r32_m32    
  movl %ebx, %ebx                    #  25    0xe4ec7  2      OPC=movl_r32_r32    
  movsbl (%r15,%rbx,1), %esi         #  26    0xe4ec9  5      OPC=movsbl_r32_m8   
  movl %r12d, %edi                   #  27    0xe4ece  3      OPC=movl_r32_r32    
  movl %eax, %eax                    #  28    0xe4ed1  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %eax       #  29    0xe4ed3  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax             #  30    0xe4ed8  6      OPC=andl_r32_imm32  
  nop                                #  31    0xe4ede  1      OPC=nop             
  nop                                #  32    0xe4edf  1      OPC=nop             
  nop                                #  33    0xe4ee0  1      OPC=nop             
  addq %r15, %rax                    #  34    0xe4ee1  3      OPC=addq_r64_r64    
  callq %rax                         #  35    0xe4ee4  2      OPC=callq_r64       
  movl %ebx, %ebx                    #  36    0xe4ee6  2      OPC=movl_r32_r32    
  movb %al, (%r15,%rbx,1)            #  37    0xe4ee8  4      OPC=movb_m8_r8      
  addl $0x1, %ebx                    #  38    0xe4eec  3      OPC=addl_r32_imm8   
  cmpl %ebx, %r13d                   #  39    0xe4eef  3      OPC=cmpl_r32_r32    
  ja .L_e4ec0                        #  40    0xe4ef2  2      OPC=ja_label        
  nop                                #  41    0xe4ef4  1      OPC=nop             
  nop                                #  42    0xe4ef5  1      OPC=nop             
  nop                                #  43    0xe4ef6  1      OPC=nop             
  nop                                #  44    0xe4ef7  1      OPC=nop             
  nop                                #  45    0xe4ef8  1      OPC=nop             
  nop                                #  46    0xe4ef9  1      OPC=nop             
  nop                                #  47    0xe4efa  1      OPC=nop             
  nop                                #  48    0xe4efb  1      OPC=nop             
  nop                                #  49    0xe4efc  1      OPC=nop             
  nop                                #  50    0xe4efd  1      OPC=nop             
  nop                                #  51    0xe4efe  1      OPC=nop             
  nop                                #  52    0xe4eff  1      OPC=nop             
  nop                                #  53    0xe4f00  1      OPC=nop             
  nop                                #  54    0xe4f01  1      OPC=nop             
  nop                                #  55    0xe4f02  1      OPC=nop             
  nop                                #  56    0xe4f03  1      OPC=nop             
  nop                                #  57    0xe4f04  1      OPC=nop             
  nop                                #  58    0xe4f05  1      OPC=nop             
.L_e4f00:                            #        0xe4f06  0      OPC=<label>         
  popq %rbx                          #  59    0xe4f06  1      OPC=popq_r64_1      
  popq %r12                          #  60    0xe4f07  2      OPC=popq_r64_1      
  movl %r13d, %eax                   #  61    0xe4f09  3      OPC=movl_r32_r32    
  popq %r13                          #  62    0xe4f0c  2      OPC=popq_r64_1      
  popq %r11                          #  63    0xe4f0e  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d            #  64    0xe4f10  7      OPC=andl_r32_imm32  
  nop                                #  65    0xe4f17  1      OPC=nop             
  nop                                #  66    0xe4f18  1      OPC=nop             
  nop                                #  67    0xe4f19  1      OPC=nop             
  nop                                #  68    0xe4f1a  1      OPC=nop             
  addq %r15, %r11                    #  69    0xe4f1b  3      OPC=addq_r64_r64    
  jmpq %r11                          #  70    0xe4f1e  3      OPC=jmpq_r64        
  nop                                #  71    0xe4f21  1      OPC=nop             
  nop                                #  72    0xe4f22  1      OPC=nop             
  nop                                #  73    0xe4f23  1      OPC=nop             
  nop                                #  74    0xe4f24  1      OPC=nop             
  nop                                #  75    0xe4f25  1      OPC=nop             
  nop                                #  76    0xe4f26  1      OPC=nop             
  nop                                #  77    0xe4f27  1      OPC=nop             
  nop                                #  78    0xe4f28  1      OPC=nop             
  nop                                #  79    0xe4f29  1      OPC=nop             
  nop                                #  80    0xe4f2a  1      OPC=nop             
  nop                                #  81    0xe4f2b  1      OPC=nop             
  nop                                #  82    0xe4f2c  1      OPC=nop             
                                                                                  
.size _ZNKSt5ctypeIcE10do_tolowerEPcPKc, .-_ZNKSt5ctypeIcE10do_tolowerEPcPKc

