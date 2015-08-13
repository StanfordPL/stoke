  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE4sizeEv
  .type _ZNKSbIwSt11char_traitsIwESaIwEE4sizeEv, @function

#! file-offset 0x1153c0
#! rip-offset  0xd53c0
#! capacity    32 bytes

# Text                                     #  Line  RIP      Bytes  Opcode              
._ZNKSbIwSt11char_traitsIwESaIwEE4sizeEv:  #        0xd53c0  0      OPC=<label>         
  movl %edi, %edi                          #  1     0xd53c0  2      OPC=movl_r32_r32    
  movl %edi, %edi                          #  2     0xd53c2  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                 #  3     0xd53c4  4      OPC=movl_r32_m32    
  popq %r11                                #  4     0xd53c8  2      OPC=popq_r64_1      
  subl $0xc, %eax                          #  5     0xd53ca  3      OPC=subl_r32_imm8   
  movl %eax, %eax                          #  6     0xd53cd  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                 #  7     0xd53cf  4      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d                  #  8     0xd53d3  7      OPC=andl_r32_imm32  
  nop                                      #  9     0xd53da  1      OPC=nop             
  nop                                      #  10    0xd53db  1      OPC=nop             
  nop                                      #  11    0xd53dc  1      OPC=nop             
  nop                                      #  12    0xd53dd  1      OPC=nop             
  addq %r15, %r11                          #  13    0xd53de  3      OPC=addq_r64_r64    
  jmpq %r11                                #  14    0xd53e1  3      OPC=jmpq_r64        
  nop                                      #  15    0xd53e4  1      OPC=nop             
  nop                                      #  16    0xd53e5  1      OPC=nop             
  nop                                      #  17    0xd53e6  1      OPC=nop             
                                                                                        
.size _ZNKSbIwSt11char_traitsIwESaIwEE4sizeEv, .-_ZNKSbIwSt11char_traitsIwESaIwEE4sizeEv

