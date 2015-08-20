  .text
  .globl _ZNKSt10moneypunctIwLb1EE16do_negative_signEv
  .type _ZNKSt10moneypunctIwLb1EE16do_negative_signEv, @function

#! file-offset 0xf6d00
#! rip-offset  0xb6d00
#! capacity    128 bytes

# Text                                               #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb1EE16do_negative_signEv:      #        0xb6d00  0      OPC=<label>         
  pushq %rbx                                         #  1     0xb6d00  1      OPC=pushq_r64_1     
  movl %esi, %esi                                    #  2     0xb6d01  2      OPC=movl_r32_r32    
  movl %edi, %ebx                                    #  3     0xb6d03  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                    #  4     0xb6d05  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                   #  5     0xb6d07  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                    #  6     0xb6d0a  3      OPC=addq_r64_r64    
  movl %esi, %esi                                    #  7     0xb6d0d  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rsi,1), %eax                        #  8     0xb6d0f  5      OPC=movl_r32_m32    
  leal 0xf(%rsp), %edx                               #  9     0xb6d14  4      OPC=leal_r32_m16    
  movl %eax, %eax                                    #  10    0xb6d18  2      OPC=movl_r32_r32    
  movl 0x2c(%r15,%rax,1), %esi                       #  11    0xb6d1a  5      OPC=movl_r32_m32    
  nop                                                #  12    0xb6d1f  1      OPC=nop             
  nop                                                #  13    0xb6d20  1      OPC=nop             
  nop                                                #  14    0xb6d21  1      OPC=nop             
  nop                                                #  15    0xb6d22  1      OPC=nop             
  nop                                                #  16    0xb6d23  1      OPC=nop             
  nop                                                #  17    0xb6d24  1      OPC=nop             
  nop                                                #  18    0xb6d25  1      OPC=nop             
  nop                                                #  19    0xb6d26  1      OPC=nop             
  nop                                                #  20    0xb6d27  1      OPC=nop             
  nop                                                #  21    0xb6d28  1      OPC=nop             
  nop                                                #  22    0xb6d29  1      OPC=nop             
  nop                                                #  23    0xb6d2a  1      OPC=nop             
  nop                                                #  24    0xb6d2b  1      OPC=nop             
  nop                                                #  25    0xb6d2c  1      OPC=nop             
  nop                                                #  26    0xb6d2d  1      OPC=nop             
  nop                                                #  27    0xb6d2e  1      OPC=nop             
  nop                                                #  28    0xb6d2f  1      OPC=nop             
  nop                                                #  29    0xb6d30  1      OPC=nop             
  nop                                                #  30    0xb6d31  1      OPC=nop             
  nop                                                #  31    0xb6d32  1      OPC=nop             
  nop                                                #  32    0xb6d33  1      OPC=nop             
  nop                                                #  33    0xb6d34  1      OPC=nop             
  nop                                                #  34    0xb6d35  1      OPC=nop             
  nop                                                #  35    0xb6d36  1      OPC=nop             
  nop                                                #  36    0xb6d37  1      OPC=nop             
  nop                                                #  37    0xb6d38  1      OPC=nop             
  nop                                                #  38    0xb6d39  1      OPC=nop             
  nop                                                #  39    0xb6d3a  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEEC1EPKwRKS1_  #  40    0xb6d3b  5      OPC=callq_label     
  movl %ebx, %eax                                    #  41    0xb6d40  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                   #  42    0xb6d42  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                    #  43    0xb6d45  3      OPC=addq_r64_r64    
  popq %rbx                                          #  44    0xb6d48  1      OPC=popq_r64_1      
  popq %r11                                          #  45    0xb6d49  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                            #  46    0xb6d4b  7      OPC=andl_r32_imm32  
  nop                                                #  47    0xb6d52  1      OPC=nop             
  nop                                                #  48    0xb6d53  1      OPC=nop             
  nop                                                #  49    0xb6d54  1      OPC=nop             
  nop                                                #  50    0xb6d55  1      OPC=nop             
  addq %r15, %r11                                    #  51    0xb6d56  3      OPC=addq_r64_r64    
  jmpq %r11                                          #  52    0xb6d59  3      OPC=jmpq_r64        
  nop                                                #  53    0xb6d5c  1      OPC=nop             
  nop                                                #  54    0xb6d5d  1      OPC=nop             
  nop                                                #  55    0xb6d5e  1      OPC=nop             
  nop                                                #  56    0xb6d5f  1      OPC=nop             
  nop                                                #  57    0xb6d60  1      OPC=nop             
  nop                                                #  58    0xb6d61  1      OPC=nop             
  nop                                                #  59    0xb6d62  1      OPC=nop             
  nop                                                #  60    0xb6d63  1      OPC=nop             
  nop                                                #  61    0xb6d64  1      OPC=nop             
  nop                                                #  62    0xb6d65  1      OPC=nop             
  nop                                                #  63    0xb6d66  1      OPC=nop             
  movl %eax, %edi                                    #  64    0xb6d67  2      OPC=movl_r32_r32    
  nop                                                #  65    0xb6d69  1      OPC=nop             
  nop                                                #  66    0xb6d6a  1      OPC=nop             
  nop                                                #  67    0xb6d6b  1      OPC=nop             
  nop                                                #  68    0xb6d6c  1      OPC=nop             
  nop                                                #  69    0xb6d6d  1      OPC=nop             
  nop                                                #  70    0xb6d6e  1      OPC=nop             
  nop                                                #  71    0xb6d6f  1      OPC=nop             
  nop                                                #  72    0xb6d70  1      OPC=nop             
  nop                                                #  73    0xb6d71  1      OPC=nop             
  nop                                                #  74    0xb6d72  1      OPC=nop             
  nop                                                #  75    0xb6d73  1      OPC=nop             
  nop                                                #  76    0xb6d74  1      OPC=nop             
  nop                                                #  77    0xb6d75  1      OPC=nop             
  nop                                                #  78    0xb6d76  1      OPC=nop             
  nop                                                #  79    0xb6d77  1      OPC=nop             
  nop                                                #  80    0xb6d78  1      OPC=nop             
  nop                                                #  81    0xb6d79  1      OPC=nop             
  nop                                                #  82    0xb6d7a  1      OPC=nop             
  nop                                                #  83    0xb6d7b  1      OPC=nop             
  nop                                                #  84    0xb6d7c  1      OPC=nop             
  nop                                                #  85    0xb6d7d  1      OPC=nop             
  nop                                                #  86    0xb6d7e  1      OPC=nop             
  nop                                                #  87    0xb6d7f  1      OPC=nop             
  nop                                                #  88    0xb6d80  1      OPC=nop             
  nop                                                #  89    0xb6d81  1      OPC=nop             
  callq ._Unwind_Resume                              #  90    0xb6d82  5      OPC=callq_label     
                                                                                                  
.size _ZNKSt10moneypunctIwLb1EE16do_negative_signEv, .-_ZNKSt10moneypunctIwLb1EE16do_negative_signEv

