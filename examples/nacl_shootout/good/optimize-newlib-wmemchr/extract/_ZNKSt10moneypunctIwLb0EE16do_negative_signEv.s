  .text
  .globl _ZNKSt10moneypunctIwLb0EE16do_negative_signEv
  .type _ZNKSt10moneypunctIwLb0EE16do_negative_signEv, @function

#! file-offset 0xf6e80
#! rip-offset  0xb6e80
#! capacity    128 bytes

# Text                                               #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb0EE16do_negative_signEv:      #        0xb6e80  0      OPC=<label>         
  pushq %rbx                                         #  1     0xb6e80  1      OPC=pushq_r64_1     
  movl %esi, %esi                                    #  2     0xb6e81  2      OPC=movl_r32_r32    
  movl %edi, %ebx                                    #  3     0xb6e83  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                    #  4     0xb6e85  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                   #  5     0xb6e87  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                    #  6     0xb6e8a  3      OPC=addq_r64_r64    
  movl %esi, %esi                                    #  7     0xb6e8d  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rsi,1), %eax                        #  8     0xb6e8f  5      OPC=movl_r32_m32    
  leal 0xf(%rsp), %edx                               #  9     0xb6e94  4      OPC=leal_r32_m16    
  movl %eax, %eax                                    #  10    0xb6e98  2      OPC=movl_r32_r32    
  movl 0x2c(%r15,%rax,1), %esi                       #  11    0xb6e9a  5      OPC=movl_r32_m32    
  nop                                                #  12    0xb6e9f  1      OPC=nop             
  nop                                                #  13    0xb6ea0  1      OPC=nop             
  nop                                                #  14    0xb6ea1  1      OPC=nop             
  nop                                                #  15    0xb6ea2  1      OPC=nop             
  nop                                                #  16    0xb6ea3  1      OPC=nop             
  nop                                                #  17    0xb6ea4  1      OPC=nop             
  nop                                                #  18    0xb6ea5  1      OPC=nop             
  nop                                                #  19    0xb6ea6  1      OPC=nop             
  nop                                                #  20    0xb6ea7  1      OPC=nop             
  nop                                                #  21    0xb6ea8  1      OPC=nop             
  nop                                                #  22    0xb6ea9  1      OPC=nop             
  nop                                                #  23    0xb6eaa  1      OPC=nop             
  nop                                                #  24    0xb6eab  1      OPC=nop             
  nop                                                #  25    0xb6eac  1      OPC=nop             
  nop                                                #  26    0xb6ead  1      OPC=nop             
  nop                                                #  27    0xb6eae  1      OPC=nop             
  nop                                                #  28    0xb6eaf  1      OPC=nop             
  nop                                                #  29    0xb6eb0  1      OPC=nop             
  nop                                                #  30    0xb6eb1  1      OPC=nop             
  nop                                                #  31    0xb6eb2  1      OPC=nop             
  nop                                                #  32    0xb6eb3  1      OPC=nop             
  nop                                                #  33    0xb6eb4  1      OPC=nop             
  nop                                                #  34    0xb6eb5  1      OPC=nop             
  nop                                                #  35    0xb6eb6  1      OPC=nop             
  nop                                                #  36    0xb6eb7  1      OPC=nop             
  nop                                                #  37    0xb6eb8  1      OPC=nop             
  nop                                                #  38    0xb6eb9  1      OPC=nop             
  nop                                                #  39    0xb6eba  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEEC1EPKwRKS1_  #  40    0xb6ebb  5      OPC=callq_label     
  movl %ebx, %eax                                    #  41    0xb6ec0  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                   #  42    0xb6ec2  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                    #  43    0xb6ec5  3      OPC=addq_r64_r64    
  popq %rbx                                          #  44    0xb6ec8  1      OPC=popq_r64_1      
  popq %r11                                          #  45    0xb6ec9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                            #  46    0xb6ecb  7      OPC=andl_r32_imm32  
  nop                                                #  47    0xb6ed2  1      OPC=nop             
  nop                                                #  48    0xb6ed3  1      OPC=nop             
  nop                                                #  49    0xb6ed4  1      OPC=nop             
  nop                                                #  50    0xb6ed5  1      OPC=nop             
  addq %r15, %r11                                    #  51    0xb6ed6  3      OPC=addq_r64_r64    
  jmpq %r11                                          #  52    0xb6ed9  3      OPC=jmpq_r64        
  nop                                                #  53    0xb6edc  1      OPC=nop             
  nop                                                #  54    0xb6edd  1      OPC=nop             
  nop                                                #  55    0xb6ede  1      OPC=nop             
  nop                                                #  56    0xb6edf  1      OPC=nop             
  nop                                                #  57    0xb6ee0  1      OPC=nop             
  nop                                                #  58    0xb6ee1  1      OPC=nop             
  nop                                                #  59    0xb6ee2  1      OPC=nop             
  nop                                                #  60    0xb6ee3  1      OPC=nop             
  nop                                                #  61    0xb6ee4  1      OPC=nop             
  nop                                                #  62    0xb6ee5  1      OPC=nop             
  nop                                                #  63    0xb6ee6  1      OPC=nop             
  movl %eax, %edi                                    #  64    0xb6ee7  2      OPC=movl_r32_r32    
  nop                                                #  65    0xb6ee9  1      OPC=nop             
  nop                                                #  66    0xb6eea  1      OPC=nop             
  nop                                                #  67    0xb6eeb  1      OPC=nop             
  nop                                                #  68    0xb6eec  1      OPC=nop             
  nop                                                #  69    0xb6eed  1      OPC=nop             
  nop                                                #  70    0xb6eee  1      OPC=nop             
  nop                                                #  71    0xb6eef  1      OPC=nop             
  nop                                                #  72    0xb6ef0  1      OPC=nop             
  nop                                                #  73    0xb6ef1  1      OPC=nop             
  nop                                                #  74    0xb6ef2  1      OPC=nop             
  nop                                                #  75    0xb6ef3  1      OPC=nop             
  nop                                                #  76    0xb6ef4  1      OPC=nop             
  nop                                                #  77    0xb6ef5  1      OPC=nop             
  nop                                                #  78    0xb6ef6  1      OPC=nop             
  nop                                                #  79    0xb6ef7  1      OPC=nop             
  nop                                                #  80    0xb6ef8  1      OPC=nop             
  nop                                                #  81    0xb6ef9  1      OPC=nop             
  nop                                                #  82    0xb6efa  1      OPC=nop             
  nop                                                #  83    0xb6efb  1      OPC=nop             
  nop                                                #  84    0xb6efc  1      OPC=nop             
  nop                                                #  85    0xb6efd  1      OPC=nop             
  nop                                                #  86    0xb6efe  1      OPC=nop             
  nop                                                #  87    0xb6eff  1      OPC=nop             
  nop                                                #  88    0xb6f00  1      OPC=nop             
  nop                                                #  89    0xb6f01  1      OPC=nop             
  callq ._Unwind_Resume                              #  90    0xb6f02  5      OPC=callq_label     
                                                                                                  
.size _ZNKSt10moneypunctIwLb0EE16do_negative_signEv, .-_ZNKSt10moneypunctIwLb0EE16do_negative_signEv

