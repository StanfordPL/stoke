  .text
  .globl _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecd
  .type _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecd, @function

#! file-offset 0xb87a0
#! rip-offset  0x787a0
#! capacity    96 bytes

# Text                                                                                 #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecd:  #        0x787a0  0      OPC=<label>         
  movl %edi, %edi                                                                      #  1     0x787a0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                      #  2     0x787a2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                      #  3     0x787a5  3      OPC=addq_r64_r64    
  movl %edx, %edx                                                                      #  4     0x787a8  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                      #  5     0x787aa  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                             #  6     0x787ac  4      OPC=movl_r32_m32    
  movsbl %cl, %ecx                                                                     #  7     0x787b0  3      OPC=movsbl_r32_r8   
  movl %eax, %eax                                                                      #  8     0x787b3  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rax,1), %eax                                                         #  9     0x787b5  5      OPC=movl_r32_m32    
  nop                                                                                  #  10    0x787ba  1      OPC=nop             
  nop                                                                                  #  11    0x787bb  1      OPC=nop             
  nop                                                                                  #  12    0x787bc  1      OPC=nop             
  nop                                                                                  #  13    0x787bd  1      OPC=nop             
  nop                                                                                  #  14    0x787be  1      OPC=nop             
  nop                                                                                  #  15    0x787bf  1      OPC=nop             
  nop                                                                                  #  16    0x787c0  1      OPC=nop             
  nop                                                                                  #  17    0x787c1  1      OPC=nop             
  nop                                                                                  #  18    0x787c2  1      OPC=nop             
  nop                                                                                  #  19    0x787c3  1      OPC=nop             
  nop                                                                                  #  20    0x787c4  1      OPC=nop             
  nop                                                                                  #  21    0x787c5  1      OPC=nop             
  nop                                                                                  #  22    0x787c6  1      OPC=nop             
  nop                                                                                  #  23    0x787c7  1      OPC=nop             
  nop                                                                                  #  24    0x787c8  1      OPC=nop             
  nop                                                                                  #  25    0x787c9  1      OPC=nop             
  nop                                                                                  #  26    0x787ca  1      OPC=nop             
  nop                                                                                  #  27    0x787cb  1      OPC=nop             
  nop                                                                                  #  28    0x787cc  1      OPC=nop             
  nop                                                                                  #  29    0x787cd  1      OPC=nop             
  nop                                                                                  #  30    0x787ce  1      OPC=nop             
  nop                                                                                  #  31    0x787cf  1      OPC=nop             
  nop                                                                                  #  32    0x787d0  1      OPC=nop             
  nop                                                                                  #  33    0x787d1  1      OPC=nop             
  nop                                                                                  #  34    0x787d2  1      OPC=nop             
  nop                                                                                  #  35    0x787d3  1      OPC=nop             
  nop                                                                                  #  36    0x787d4  1      OPC=nop             
  nop                                                                                  #  37    0x787d5  1      OPC=nop             
  nop                                                                                  #  38    0x787d6  1      OPC=nop             
  nop                                                                                  #  39    0x787d7  1      OPC=nop             
  andl $0xffffffe0, %eax                                                               #  40    0x787d8  6      OPC=andl_r32_imm32  
  nop                                                                                  #  41    0x787de  1      OPC=nop             
  nop                                                                                  #  42    0x787df  1      OPC=nop             
  nop                                                                                  #  43    0x787e0  1      OPC=nop             
  addq %r15, %rax                                                                      #  44    0x787e1  3      OPC=addq_r64_r64    
  callq %rax                                                                           #  45    0x787e4  2      OPC=callq_r64       
  addl $0x8, %esp                                                                      #  46    0x787e6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                      #  47    0x787e9  3      OPC=addq_r64_r64    
  popq %r11                                                                            #  48    0x787ec  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                              #  49    0x787ee  7      OPC=andl_r32_imm32  
  nop                                                                                  #  50    0x787f5  1      OPC=nop             
  nop                                                                                  #  51    0x787f6  1      OPC=nop             
  nop                                                                                  #  52    0x787f7  1      OPC=nop             
  nop                                                                                  #  53    0x787f8  1      OPC=nop             
  addq %r15, %r11                                                                      #  54    0x787f9  3      OPC=addq_r64_r64    
  jmpq %r11                                                                            #  55    0x787fc  3      OPC=jmpq_r64        
  nop                                                                                  #  56    0x787ff  1      OPC=nop             
  nop                                                                                  #  57    0x78800  1      OPC=nop             
  nop                                                                                  #  58    0x78801  1      OPC=nop             
  nop                                                                                  #  59    0x78802  1      OPC=nop             
  nop                                                                                  #  60    0x78803  1      OPC=nop             
  nop                                                                                  #  61    0x78804  1      OPC=nop             
  nop                                                                                  #  62    0x78805  1      OPC=nop             
  nop                                                                                  #  63    0x78806  1      OPC=nop             
  nop                                                                                  #  64    0x78807  1      OPC=nop             
  nop                                                                                  #  65    0x78808  1      OPC=nop             
  nop                                                                                  #  66    0x78809  1      OPC=nop             
  nop                                                                                  #  67    0x7880a  1      OPC=nop             
  nop                                                                                  #  68    0x7880b  1      OPC=nop             
  nop                                                                                  #  69    0x7880c  1      OPC=nop             
                                                                                                                                    
.size _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecd, .-_ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecd

