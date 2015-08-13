  .text
  .globl _ZNKSt10moneypunctIwLb0EE16do_negative_signEv
  .type _ZNKSt10moneypunctIwLb0EE16do_negative_signEv, @function

#! file-offset 0xf6b80
#! rip-offset  0xb6b80
#! capacity    128 bytes

# Text                                               #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb0EE16do_negative_signEv:      #        0xb6b80  0      OPC=<label>         
  pushq %rbx                                         #  1     0xb6b80  1      OPC=pushq_r64_1     
  movl %esi, %esi                                    #  2     0xb6b81  2      OPC=movl_r32_r32    
  movl %edi, %ebx                                    #  3     0xb6b83  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                    #  4     0xb6b85  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                   #  5     0xb6b87  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                    #  6     0xb6b8a  3      OPC=addq_r64_r64    
  movl %esi, %esi                                    #  7     0xb6b8d  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rsi,1), %eax                        #  8     0xb6b8f  5      OPC=movl_r32_m32    
  leal 0xf(%rsp), %edx                               #  9     0xb6b94  4      OPC=leal_r32_m16    
  movl %eax, %eax                                    #  10    0xb6b98  2      OPC=movl_r32_r32    
  movl 0x2c(%r15,%rax,1), %esi                       #  11    0xb6b9a  5      OPC=movl_r32_m32    
  nop                                                #  12    0xb6b9f  1      OPC=nop             
  nop                                                #  13    0xb6ba0  1      OPC=nop             
  nop                                                #  14    0xb6ba1  1      OPC=nop             
  nop                                                #  15    0xb6ba2  1      OPC=nop             
  nop                                                #  16    0xb6ba3  1      OPC=nop             
  nop                                                #  17    0xb6ba4  1      OPC=nop             
  nop                                                #  18    0xb6ba5  1      OPC=nop             
  nop                                                #  19    0xb6ba6  1      OPC=nop             
  nop                                                #  20    0xb6ba7  1      OPC=nop             
  nop                                                #  21    0xb6ba8  1      OPC=nop             
  nop                                                #  22    0xb6ba9  1      OPC=nop             
  nop                                                #  23    0xb6baa  1      OPC=nop             
  nop                                                #  24    0xb6bab  1      OPC=nop             
  nop                                                #  25    0xb6bac  1      OPC=nop             
  nop                                                #  26    0xb6bad  1      OPC=nop             
  nop                                                #  27    0xb6bae  1      OPC=nop             
  nop                                                #  28    0xb6baf  1      OPC=nop             
  nop                                                #  29    0xb6bb0  1      OPC=nop             
  nop                                                #  30    0xb6bb1  1      OPC=nop             
  nop                                                #  31    0xb6bb2  1      OPC=nop             
  nop                                                #  32    0xb6bb3  1      OPC=nop             
  nop                                                #  33    0xb6bb4  1      OPC=nop             
  nop                                                #  34    0xb6bb5  1      OPC=nop             
  nop                                                #  35    0xb6bb6  1      OPC=nop             
  nop                                                #  36    0xb6bb7  1      OPC=nop             
  nop                                                #  37    0xb6bb8  1      OPC=nop             
  nop                                                #  38    0xb6bb9  1      OPC=nop             
  nop                                                #  39    0xb6bba  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEEC1EPKwRKS1_  #  40    0xb6bbb  5      OPC=callq_label     
  movl %ebx, %eax                                    #  41    0xb6bc0  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                   #  42    0xb6bc2  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                    #  43    0xb6bc5  3      OPC=addq_r64_r64    
  popq %rbx                                          #  44    0xb6bc8  1      OPC=popq_r64_1      
  popq %r11                                          #  45    0xb6bc9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                            #  46    0xb6bcb  7      OPC=andl_r32_imm32  
  nop                                                #  47    0xb6bd2  1      OPC=nop             
  nop                                                #  48    0xb6bd3  1      OPC=nop             
  nop                                                #  49    0xb6bd4  1      OPC=nop             
  nop                                                #  50    0xb6bd5  1      OPC=nop             
  addq %r15, %r11                                    #  51    0xb6bd6  3      OPC=addq_r64_r64    
  jmpq %r11                                          #  52    0xb6bd9  3      OPC=jmpq_r64        
  nop                                                #  53    0xb6bdc  1      OPC=nop             
  nop                                                #  54    0xb6bdd  1      OPC=nop             
  nop                                                #  55    0xb6bde  1      OPC=nop             
  nop                                                #  56    0xb6bdf  1      OPC=nop             
  nop                                                #  57    0xb6be0  1      OPC=nop             
  nop                                                #  58    0xb6be1  1      OPC=nop             
  nop                                                #  59    0xb6be2  1      OPC=nop             
  nop                                                #  60    0xb6be3  1      OPC=nop             
  nop                                                #  61    0xb6be4  1      OPC=nop             
  nop                                                #  62    0xb6be5  1      OPC=nop             
  nop                                                #  63    0xb6be6  1      OPC=nop             
  movl %eax, %edi                                    #  64    0xb6be7  2      OPC=movl_r32_r32    
  nop                                                #  65    0xb6be9  1      OPC=nop             
  nop                                                #  66    0xb6bea  1      OPC=nop             
  nop                                                #  67    0xb6beb  1      OPC=nop             
  nop                                                #  68    0xb6bec  1      OPC=nop             
  nop                                                #  69    0xb6bed  1      OPC=nop             
  nop                                                #  70    0xb6bee  1      OPC=nop             
  nop                                                #  71    0xb6bef  1      OPC=nop             
  nop                                                #  72    0xb6bf0  1      OPC=nop             
  nop                                                #  73    0xb6bf1  1      OPC=nop             
  nop                                                #  74    0xb6bf2  1      OPC=nop             
  nop                                                #  75    0xb6bf3  1      OPC=nop             
  nop                                                #  76    0xb6bf4  1      OPC=nop             
  nop                                                #  77    0xb6bf5  1      OPC=nop             
  nop                                                #  78    0xb6bf6  1      OPC=nop             
  nop                                                #  79    0xb6bf7  1      OPC=nop             
  nop                                                #  80    0xb6bf8  1      OPC=nop             
  nop                                                #  81    0xb6bf9  1      OPC=nop             
  nop                                                #  82    0xb6bfa  1      OPC=nop             
  nop                                                #  83    0xb6bfb  1      OPC=nop             
  nop                                                #  84    0xb6bfc  1      OPC=nop             
  nop                                                #  85    0xb6bfd  1      OPC=nop             
  nop                                                #  86    0xb6bfe  1      OPC=nop             
  nop                                                #  87    0xb6bff  1      OPC=nop             
  nop                                                #  88    0xb6c00  1      OPC=nop             
  nop                                                #  89    0xb6c01  1      OPC=nop             
  callq ._Unwind_Resume                              #  90    0xb6c02  5      OPC=callq_label     
                                                                                                  
.size _ZNKSt10moneypunctIwLb0EE16do_negative_signEv, .-_ZNKSt10moneypunctIwLb0EE16do_negative_signEv

