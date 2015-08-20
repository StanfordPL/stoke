  .text
  .globl _ZNSiD2Ev
  .type _ZNSiD2Ev, @function

#! file-offset 0xa7080
#! rip-offset  0x67080
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
._ZNSiD2Ev:                    #        0x67080  0      OPC=<label>         
  movl %esi, %esi              #  1     0x67080  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  2     0x67082  2      OPC=movl_r32_r32    
  movl %esi, %esi              #  3     0x67084  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax     #  4     0x67086  4      OPC=movl_r32_m32    
  movl %esi, %esi              #  5     0x6708a  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rsi,1), %edx  #  6     0x6708c  5      OPC=movl_r32_m32    
  movl %edi, %edi              #  7     0x67091  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)     #  8     0x67093  4      OPC=movl_m32_r32    
  subl $0xc, %eax              #  9     0x67097  3      OPC=subl_r32_imm8   
  movl %eax, %eax              #  10    0x6709a  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax     #  11    0x6709c  4      OPC=movl_r32_m32    
  movl %edi, %edi              #  12    0x670a0  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rdi,1)  #  13    0x670a2  9      OPC=movl_m32_imm32  
  addl %edi, %eax              #  14    0x670ab  2      OPC=addl_r32_r32    
  movl %eax, %eax              #  15    0x670ad  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)     #  16    0x670af  4      OPC=movl_m32_r32    
  popq %r11                    #  17    0x670b3  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  18    0x670b5  7      OPC=andl_r32_imm32  
  nop                          #  19    0x670bc  1      OPC=nop             
  nop                          #  20    0x670bd  1      OPC=nop             
  nop                          #  21    0x670be  1      OPC=nop             
  nop                          #  22    0x670bf  1      OPC=nop             
  addq %r15, %r11              #  23    0x670c0  3      OPC=addq_r64_r64    
  jmpq %r11                    #  24    0x670c3  3      OPC=jmpq_r64        
  nop                          #  25    0x670c6  1      OPC=nop             
                                                                            
.size _ZNSiD2Ev, .-_ZNSiD2Ev

