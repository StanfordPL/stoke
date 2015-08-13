  .text
  .globl _ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmcc
  .type _ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmcc, @function

#! file-offset 0xb89e0
#! rip-offset  0x789e0
#! capacity    96 bytes

# Text                                                                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmcc:  #        0x789e0  0      OPC=<label>         
  subl $0x18, %esp                                                                            #  1     0x789e0  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                             #  2     0x789e3  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                                             #  3     0x789e6  2      OPC=movl_r32_r32    
  movl %edx, %edx                                                                             #  4     0x789e8  2      OPC=movl_r32_r32    
  movsbl 0x20(%rsp), %r10d                                                                    #  5     0x789ea  6      OPC=movsbl_r32_m8   
  movl %edi, %edi                                                                             #  6     0x789f0  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                    #  7     0x789f2  4      OPC=movl_r32_m32    
  movsbl %cl, %ecx                                                                            #  8     0x789f6  3      OPC=movsbl_r32_r8   
  movsbl %r9b, %r9d                                                                           #  9     0x789f9  4      OPC=movsbl_r32_r8   
  nop                                                                                         #  10    0x789fd  1      OPC=nop             
  nop                                                                                         #  11    0x789fe  1      OPC=nop             
  nop                                                                                         #  12    0x789ff  1      OPC=nop             
  movl %r10d, (%rsp)                                                                          #  13    0x78a00  4      OPC=movl_m32_r32    
  movl %eax, %eax                                                                             #  14    0x78a04  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax                                                                 #  15    0x78a06  5      OPC=movl_r32_m32    
  nop                                                                                         #  16    0x78a0b  1      OPC=nop             
  nop                                                                                         #  17    0x78a0c  1      OPC=nop             
  nop                                                                                         #  18    0x78a0d  1      OPC=nop             
  nop                                                                                         #  19    0x78a0e  1      OPC=nop             
  nop                                                                                         #  20    0x78a0f  1      OPC=nop             
  nop                                                                                         #  21    0x78a10  1      OPC=nop             
  nop                                                                                         #  22    0x78a11  1      OPC=nop             
  nop                                                                                         #  23    0x78a12  1      OPC=nop             
  nop                                                                                         #  24    0x78a13  1      OPC=nop             
  nop                                                                                         #  25    0x78a14  1      OPC=nop             
  nop                                                                                         #  26    0x78a15  1      OPC=nop             
  nop                                                                                         #  27    0x78a16  1      OPC=nop             
  nop                                                                                         #  28    0x78a17  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                      #  29    0x78a18  6      OPC=andl_r32_imm32  
  nop                                                                                         #  30    0x78a1e  1      OPC=nop             
  nop                                                                                         #  31    0x78a1f  1      OPC=nop             
  nop                                                                                         #  32    0x78a20  1      OPC=nop             
  addq %r15, %rax                                                                             #  33    0x78a21  3      OPC=addq_r64_r64    
  callq %rax                                                                                  #  34    0x78a24  2      OPC=callq_r64       
  addl $0x18, %esp                                                                            #  35    0x78a26  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                             #  36    0x78a29  3      OPC=addq_r64_r64    
  popq %r11                                                                                   #  37    0x78a2c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                     #  38    0x78a2e  7      OPC=andl_r32_imm32  
  nop                                                                                         #  39    0x78a35  1      OPC=nop             
  nop                                                                                         #  40    0x78a36  1      OPC=nop             
  nop                                                                                         #  41    0x78a37  1      OPC=nop             
  nop                                                                                         #  42    0x78a38  1      OPC=nop             
  addq %r15, %r11                                                                             #  43    0x78a39  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                   #  44    0x78a3c  3      OPC=jmpq_r64        
  nop                                                                                         #  45    0x78a3f  1      OPC=nop             
  nop                                                                                         #  46    0x78a40  1      OPC=nop             
  nop                                                                                         #  47    0x78a41  1      OPC=nop             
  nop                                                                                         #  48    0x78a42  1      OPC=nop             
  nop                                                                                         #  49    0x78a43  1      OPC=nop             
  nop                                                                                         #  50    0x78a44  1      OPC=nop             
  nop                                                                                         #  51    0x78a45  1      OPC=nop             
  nop                                                                                         #  52    0x78a46  1      OPC=nop             
  nop                                                                                         #  53    0x78a47  1      OPC=nop             
  nop                                                                                         #  54    0x78a48  1      OPC=nop             
  nop                                                                                         #  55    0x78a49  1      OPC=nop             
  nop                                                                                         #  56    0x78a4a  1      OPC=nop             
  nop                                                                                         #  57    0x78a4b  1      OPC=nop             
  nop                                                                                         #  58    0x78a4c  1      OPC=nop             
                                                                                                                                           
.size _ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmcc, .-_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmcc

