  .text
  .globl _ZNSiD2Ev
  .type _ZNSiD2Ev, @function

#! file-offset 0xa77a0
#! rip-offset  0x677a0
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
._ZNSiD2Ev:                    #        0x677a0  0      OPC=<label>         
  movl %esi, %esi              #  1     0x677a0  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  2     0x677a2  2      OPC=movl_r32_r32    
  movl %esi, %esi              #  3     0x677a4  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax     #  4     0x677a6  4      OPC=movl_r32_m32    
  movl %esi, %esi              #  5     0x677aa  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rsi,1), %edx  #  6     0x677ac  5      OPC=movl_r32_m32    
  movl %edi, %edi              #  7     0x677b1  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)     #  8     0x677b3  4      OPC=movl_m32_r32    
  subl $0xc, %eax              #  9     0x677b7  3      OPC=subl_r32_imm8   
  movl %eax, %eax              #  10    0x677ba  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax     #  11    0x677bc  4      OPC=movl_r32_m32    
  movl %edi, %edi              #  12    0x677c0  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rdi,1)  #  13    0x677c2  9      OPC=movl_m32_imm32  
  addl %edi, %eax              #  14    0x677cb  2      OPC=addl_r32_r32    
  movl %eax, %eax              #  15    0x677cd  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)     #  16    0x677cf  4      OPC=movl_m32_r32    
  popq %r11                    #  17    0x677d3  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  18    0x677d5  7      OPC=andl_r32_imm32  
  nop                          #  19    0x677dc  1      OPC=nop             
  nop                          #  20    0x677dd  1      OPC=nop             
  nop                          #  21    0x677de  1      OPC=nop             
  nop                          #  22    0x677df  1      OPC=nop             
  addq %r15, %r11              #  23    0x677e0  3      OPC=addq_r64_r64    
  jmpq %r11                    #  24    0x677e3  3      OPC=jmpq_r64        
  nop                          #  25    0x677e6  1      OPC=nop             
                                                                            
.size _ZNSiD2Ev, .-_ZNSiD2Ev

