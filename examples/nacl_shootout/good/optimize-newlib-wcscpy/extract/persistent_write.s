  .text
  .globl persistent_write
  .type persistent_write, @function

#! file-offset 0x61980
#! rip-offset  0x21980
#! capacity    96 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.persistent_write:             #        0x21980  0      OPC=<label>         
  subl $0x8, %esp              #  1     0x21980  3      OPC=subl_r32_imm8   
  addq %r15, %rsp              #  2     0x21983  3      OPC=addq_r64_r64    
  movl %esi, %edi              #  3     0x21986  2      OPC=movl_r32_r32    
  movl %edx, %esi              #  4     0x21988  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  5     0x2198a  2      OPC=movl_r32_r32    
  movl 0x1005782e(%rip), %ecx  #  6     0x2198c  6      OPC=movl_r32_m32    
  movl $0x1, %edx              #  7     0x21992  5      OPC=movl_r32_imm32  
  nop                          #  8     0x21997  1      OPC=nop             
  nop                          #  9     0x21998  1      OPC=nop             
  nop                          #  10    0x21999  1      OPC=nop             
  nop                          #  11    0x2199a  1      OPC=nop             
  callq .arrayfile_fwrite      #  12    0x2199b  5      OPC=callq_label     
  testl %eax, %eax             #  13    0x219a0  2      OPC=testl_r32_r32   
  je .L_219c0                  #  14    0x219a2  2      OPC=je_label        
  addl $0x8, %esp              #  15    0x219a4  3      OPC=addl_r32_imm8   
  addq %r15, %rsp              #  16    0x219a7  3      OPC=addq_r64_r64    
  popq %r11                    #  17    0x219aa  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  18    0x219ac  7      OPC=andl_r32_imm32  
  nop                          #  19    0x219b3  1      OPC=nop             
  nop                          #  20    0x219b4  1      OPC=nop             
  nop                          #  21    0x219b5  1      OPC=nop             
  nop                          #  22    0x219b6  1      OPC=nop             
  addq %r15, %r11              #  23    0x219b7  3      OPC=addq_r64_r64    
  jmpq %r11                    #  24    0x219ba  3      OPC=jmpq_r64        
  nop                          #  25    0x219bd  1      OPC=nop             
  nop                          #  26    0x219be  1      OPC=nop             
  nop                          #  27    0x219bf  1      OPC=nop             
  nop                          #  28    0x219c0  1      OPC=nop             
  nop                          #  29    0x219c1  1      OPC=nop             
  nop                          #  30    0x219c2  1      OPC=nop             
  nop                          #  31    0x219c3  1      OPC=nop             
  nop                          #  32    0x219c4  1      OPC=nop             
  nop                          #  33    0x219c5  1      OPC=nop             
  nop                          #  34    0x219c6  1      OPC=nop             
.L_219c0:                      #        0x219c7  0      OPC=<label>         
  movl $0x100203d0, %ecx       #  35    0x219c7  5      OPC=movl_r32_imm32  
  movl $0x10020450, %edx       #  36    0x219cc  5      OPC=movl_r32_imm32  
  movl $0x62, %esi             #  37    0x219d1  5      OPC=movl_r32_imm32  
  movl $0x1002038c, %edi       #  38    0x219d6  5      OPC=movl_r32_imm32  
  nop                          #  39    0x219db  1      OPC=nop             
  nop                          #  40    0x219dc  1      OPC=nop             
  nop                          #  41    0x219dd  1      OPC=nop             
  nop                          #  42    0x219de  1      OPC=nop             
  nop                          #  43    0x219df  1      OPC=nop             
  nop                          #  44    0x219e0  1      OPC=nop             
  nop                          #  45    0x219e1  1      OPC=nop             
  callq .__assert_func         #  46    0x219e2  5      OPC=callq_label     
                                                                            
.size persistent_write, .-persistent_write

