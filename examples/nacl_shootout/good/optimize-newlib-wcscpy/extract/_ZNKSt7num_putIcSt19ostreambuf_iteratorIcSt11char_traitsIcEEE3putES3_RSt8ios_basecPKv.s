  .text
  .globl _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPKv
  .type _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPKv, @function

#! file-offset 0xb7e40
#! rip-offset  0x77e40
#! capacity    96 bytes

# Text                                                                                   #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPKv:  #        0x77e40  0      OPC=<label>         
  movl %edi, %edi                                                                        #  1     0x77e40  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                        #  2     0x77e42  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                        #  3     0x77e45  3      OPC=addq_r64_r64    
  movl %edx, %edx                                                                        #  4     0x77e48  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                        #  5     0x77e4a  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                               #  6     0x77e4c  4      OPC=movl_r32_m32    
  movsbl %cl, %ecx                                                                       #  7     0x77e50  3      OPC=movsbl_r32_r8   
  movl %eax, %eax                                                                        #  8     0x77e53  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rax,1), %eax                                                           #  9     0x77e55  5      OPC=movl_r32_m32    
  nop                                                                                    #  10    0x77e5a  1      OPC=nop             
  nop                                                                                    #  11    0x77e5b  1      OPC=nop             
  nop                                                                                    #  12    0x77e5c  1      OPC=nop             
  nop                                                                                    #  13    0x77e5d  1      OPC=nop             
  nop                                                                                    #  14    0x77e5e  1      OPC=nop             
  nop                                                                                    #  15    0x77e5f  1      OPC=nop             
  nop                                                                                    #  16    0x77e60  1      OPC=nop             
  nop                                                                                    #  17    0x77e61  1      OPC=nop             
  nop                                                                                    #  18    0x77e62  1      OPC=nop             
  nop                                                                                    #  19    0x77e63  1      OPC=nop             
  nop                                                                                    #  20    0x77e64  1      OPC=nop             
  nop                                                                                    #  21    0x77e65  1      OPC=nop             
  nop                                                                                    #  22    0x77e66  1      OPC=nop             
  nop                                                                                    #  23    0x77e67  1      OPC=nop             
  nop                                                                                    #  24    0x77e68  1      OPC=nop             
  nop                                                                                    #  25    0x77e69  1      OPC=nop             
  nop                                                                                    #  26    0x77e6a  1      OPC=nop             
  nop                                                                                    #  27    0x77e6b  1      OPC=nop             
  nop                                                                                    #  28    0x77e6c  1      OPC=nop             
  nop                                                                                    #  29    0x77e6d  1      OPC=nop             
  nop                                                                                    #  30    0x77e6e  1      OPC=nop             
  nop                                                                                    #  31    0x77e6f  1      OPC=nop             
  nop                                                                                    #  32    0x77e70  1      OPC=nop             
  nop                                                                                    #  33    0x77e71  1      OPC=nop             
  nop                                                                                    #  34    0x77e72  1      OPC=nop             
  nop                                                                                    #  35    0x77e73  1      OPC=nop             
  nop                                                                                    #  36    0x77e74  1      OPC=nop             
  nop                                                                                    #  37    0x77e75  1      OPC=nop             
  nop                                                                                    #  38    0x77e76  1      OPC=nop             
  nop                                                                                    #  39    0x77e77  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                 #  40    0x77e78  6      OPC=andl_r32_imm32  
  nop                                                                                    #  41    0x77e7e  1      OPC=nop             
  nop                                                                                    #  42    0x77e7f  1      OPC=nop             
  nop                                                                                    #  43    0x77e80  1      OPC=nop             
  addq %r15, %rax                                                                        #  44    0x77e81  3      OPC=addq_r64_r64    
  callq %rax                                                                             #  45    0x77e84  2      OPC=callq_r64       
  addl $0x8, %esp                                                                        #  46    0x77e86  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                        #  47    0x77e89  3      OPC=addq_r64_r64    
  popq %r11                                                                              #  48    0x77e8c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                #  49    0x77e8e  7      OPC=andl_r32_imm32  
  nop                                                                                    #  50    0x77e95  1      OPC=nop             
  nop                                                                                    #  51    0x77e96  1      OPC=nop             
  nop                                                                                    #  52    0x77e97  1      OPC=nop             
  nop                                                                                    #  53    0x77e98  1      OPC=nop             
  addq %r15, %r11                                                                        #  54    0x77e99  3      OPC=addq_r64_r64    
  jmpq %r11                                                                              #  55    0x77e9c  3      OPC=jmpq_r64        
  nop                                                                                    #  56    0x77e9f  1      OPC=nop             
  nop                                                                                    #  57    0x77ea0  1      OPC=nop             
  nop                                                                                    #  58    0x77ea1  1      OPC=nop             
  nop                                                                                    #  59    0x77ea2  1      OPC=nop             
  nop                                                                                    #  60    0x77ea3  1      OPC=nop             
  nop                                                                                    #  61    0x77ea4  1      OPC=nop             
  nop                                                                                    #  62    0x77ea5  1      OPC=nop             
  nop                                                                                    #  63    0x77ea6  1      OPC=nop             
  nop                                                                                    #  64    0x77ea7  1      OPC=nop             
  nop                                                                                    #  65    0x77ea8  1      OPC=nop             
  nop                                                                                    #  66    0x77ea9  1      OPC=nop             
  nop                                                                                    #  67    0x77eaa  1      OPC=nop             
  nop                                                                                    #  68    0x77eab  1      OPC=nop             
  nop                                                                                    #  69    0x77eac  1      OPC=nop             
                                                                                                                                      
.size _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPKv, .-_ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPKv

