  .text
  .globl _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecd
  .type _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecd, @function

#! file-offset 0xb8080
#! rip-offset  0x78080
#! capacity    96 bytes

# Text                                                                                 #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecd:  #        0x78080  0      OPC=<label>         
  movl %edi, %edi                                                                      #  1     0x78080  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                      #  2     0x78082  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                      #  3     0x78085  3      OPC=addq_r64_r64    
  movl %edx, %edx                                                                      #  4     0x78088  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                      #  5     0x7808a  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                             #  6     0x7808c  4      OPC=movl_r32_m32    
  movsbl %cl, %ecx                                                                     #  7     0x78090  3      OPC=movsbl_r32_r8   
  movl %eax, %eax                                                                      #  8     0x78093  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rax,1), %eax                                                         #  9     0x78095  5      OPC=movl_r32_m32    
  nop                                                                                  #  10    0x7809a  1      OPC=nop             
  nop                                                                                  #  11    0x7809b  1      OPC=nop             
  nop                                                                                  #  12    0x7809c  1      OPC=nop             
  nop                                                                                  #  13    0x7809d  1      OPC=nop             
  nop                                                                                  #  14    0x7809e  1      OPC=nop             
  nop                                                                                  #  15    0x7809f  1      OPC=nop             
  nop                                                                                  #  16    0x780a0  1      OPC=nop             
  nop                                                                                  #  17    0x780a1  1      OPC=nop             
  nop                                                                                  #  18    0x780a2  1      OPC=nop             
  nop                                                                                  #  19    0x780a3  1      OPC=nop             
  nop                                                                                  #  20    0x780a4  1      OPC=nop             
  nop                                                                                  #  21    0x780a5  1      OPC=nop             
  nop                                                                                  #  22    0x780a6  1      OPC=nop             
  nop                                                                                  #  23    0x780a7  1      OPC=nop             
  nop                                                                                  #  24    0x780a8  1      OPC=nop             
  nop                                                                                  #  25    0x780a9  1      OPC=nop             
  nop                                                                                  #  26    0x780aa  1      OPC=nop             
  nop                                                                                  #  27    0x780ab  1      OPC=nop             
  nop                                                                                  #  28    0x780ac  1      OPC=nop             
  nop                                                                                  #  29    0x780ad  1      OPC=nop             
  nop                                                                                  #  30    0x780ae  1      OPC=nop             
  nop                                                                                  #  31    0x780af  1      OPC=nop             
  nop                                                                                  #  32    0x780b0  1      OPC=nop             
  nop                                                                                  #  33    0x780b1  1      OPC=nop             
  nop                                                                                  #  34    0x780b2  1      OPC=nop             
  nop                                                                                  #  35    0x780b3  1      OPC=nop             
  nop                                                                                  #  36    0x780b4  1      OPC=nop             
  nop                                                                                  #  37    0x780b5  1      OPC=nop             
  nop                                                                                  #  38    0x780b6  1      OPC=nop             
  nop                                                                                  #  39    0x780b7  1      OPC=nop             
  andl $0xffffffe0, %eax                                                               #  40    0x780b8  6      OPC=andl_r32_imm32  
  nop                                                                                  #  41    0x780be  1      OPC=nop             
  nop                                                                                  #  42    0x780bf  1      OPC=nop             
  nop                                                                                  #  43    0x780c0  1      OPC=nop             
  addq %r15, %rax                                                                      #  44    0x780c1  3      OPC=addq_r64_r64    
  callq %rax                                                                           #  45    0x780c4  2      OPC=callq_r64       
  addl $0x8, %esp                                                                      #  46    0x780c6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                      #  47    0x780c9  3      OPC=addq_r64_r64    
  popq %r11                                                                            #  48    0x780cc  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                              #  49    0x780ce  7      OPC=andl_r32_imm32  
  nop                                                                                  #  50    0x780d5  1      OPC=nop             
  nop                                                                                  #  51    0x780d6  1      OPC=nop             
  nop                                                                                  #  52    0x780d7  1      OPC=nop             
  nop                                                                                  #  53    0x780d8  1      OPC=nop             
  addq %r15, %r11                                                                      #  54    0x780d9  3      OPC=addq_r64_r64    
  jmpq %r11                                                                            #  55    0x780dc  3      OPC=jmpq_r64        
  nop                                                                                  #  56    0x780df  1      OPC=nop             
  nop                                                                                  #  57    0x780e0  1      OPC=nop             
  nop                                                                                  #  58    0x780e1  1      OPC=nop             
  nop                                                                                  #  59    0x780e2  1      OPC=nop             
  nop                                                                                  #  60    0x780e3  1      OPC=nop             
  nop                                                                                  #  61    0x780e4  1      OPC=nop             
  nop                                                                                  #  62    0x780e5  1      OPC=nop             
  nop                                                                                  #  63    0x780e6  1      OPC=nop             
  nop                                                                                  #  64    0x780e7  1      OPC=nop             
  nop                                                                                  #  65    0x780e8  1      OPC=nop             
  nop                                                                                  #  66    0x780e9  1      OPC=nop             
  nop                                                                                  #  67    0x780ea  1      OPC=nop             
  nop                                                                                  #  68    0x780eb  1      OPC=nop             
  nop                                                                                  #  69    0x780ec  1      OPC=nop             
                                                                                                                                    
.size _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecd, .-_ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecd

