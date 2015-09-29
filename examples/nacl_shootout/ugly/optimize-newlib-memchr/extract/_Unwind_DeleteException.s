  .text
  .globl _Unwind_DeleteException
  .type _Unwind_DeleteException, @function

#! file-offset 0x14a4c0
#! rip-offset  0x10a4c0
#! capacity    64 bytes

# Text                         #  Line  RIP       Bytes  Opcode              
._Unwind_DeleteException:      #        0x10a4c0  0      OPC=<label>         
  movl %edi, %esi              #  1     0x10a4c0  2      OPC=movl_r32_r32    
  movl %esi, %esi              #  2     0x10a4c2  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rsi,1), %eax  #  3     0x10a4c4  5      OPC=movl_r32_m32    
  testq %rax, %rax             #  4     0x10a4c9  3      OPC=testq_r64_r64   
  je .L_10a4e0                 #  5     0x10a4cc  2      OPC=je_label        
  movl $0x1, %edi              #  6     0x10a4ce  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %eax       #  7     0x10a4d3  6      OPC=andl_r32_imm32  
  nop                          #  8     0x10a4d9  1      OPC=nop             
  nop                          #  9     0x10a4da  1      OPC=nop             
  nop                          #  10    0x10a4db  1      OPC=nop             
  addq %r15, %rax              #  11    0x10a4dc  3      OPC=addq_r64_r64    
  jmpq %rax                    #  12    0x10a4df  2      OPC=jmpq_r64        
  nop                          #  13    0x10a4e1  1      OPC=nop             
  nop                          #  14    0x10a4e2  1      OPC=nop             
  nop                          #  15    0x10a4e3  1      OPC=nop             
  nop                          #  16    0x10a4e4  1      OPC=nop             
  nop                          #  17    0x10a4e5  1      OPC=nop             
.L_10a4e0:                     #        0x10a4e6  0      OPC=<label>         
  popq %r11                    #  18    0x10a4e6  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  19    0x10a4e8  7      OPC=andl_r32_imm32  
  nop                          #  20    0x10a4ef  1      OPC=nop             
  nop                          #  21    0x10a4f0  1      OPC=nop             
  nop                          #  22    0x10a4f1  1      OPC=nop             
  nop                          #  23    0x10a4f2  1      OPC=nop             
  addq %r15, %r11              #  24    0x10a4f3  3      OPC=addq_r64_r64    
  jmpq %r11                    #  25    0x10a4f6  3      OPC=jmpq_r64        
  nop                          #  26    0x10a4f9  1      OPC=nop             
  nop                          #  27    0x10a4fa  1      OPC=nop             
  nop                          #  28    0x10a4fb  1      OPC=nop             
  nop                          #  29    0x10a4fc  1      OPC=nop             
  nop                          #  30    0x10a4fd  1      OPC=nop             
  nop                          #  31    0x10a4fe  1      OPC=nop             
  nop                          #  32    0x10a4ff  1      OPC=nop             
  nop                          #  33    0x10a500  1      OPC=nop             
  nop                          #  34    0x10a501  1      OPC=nop             
  nop                          #  35    0x10a502  1      OPC=nop             
  nop                          #  36    0x10a503  1      OPC=nop             
  nop                          #  37    0x10a504  1      OPC=nop             
  nop                          #  38    0x10a505  1      OPC=nop             
  nop                          #  39    0x10a506  1      OPC=nop             
  nop                          #  40    0x10a507  1      OPC=nop             
  nop                          #  41    0x10a508  1      OPC=nop             
  nop                          #  42    0x10a509  1      OPC=nop             
  nop                          #  43    0x10a50a  1      OPC=nop             
  nop                          #  44    0x10a50b  1      OPC=nop             
  nop                          #  45    0x10a50c  1      OPC=nop             
                                                                             
.size _Unwind_DeleteException, .-_Unwind_DeleteException

