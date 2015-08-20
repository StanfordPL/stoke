  .text
  .globl _ZSt18uncaught_exceptionv
  .type _ZSt18uncaught_exceptionv, @function

#! file-offset 0x1231c0
#! rip-offset  0xe31c0
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
._ZSt18uncaught_exceptionv:    #        0xe31c0  0      OPC=<label>         
  subl $0x8, %esp              #  1     0xe31c0  3      OPC=subl_r32_imm8   
  addq %r15, %rsp              #  2     0xe31c3  3      OPC=addq_r64_r64    
  nop                          #  3     0xe31c6  1      OPC=nop             
  nop                          #  4     0xe31c7  1      OPC=nop             
  nop                          #  5     0xe31c8  1      OPC=nop             
  nop                          #  6     0xe31c9  1      OPC=nop             
  nop                          #  7     0xe31ca  1      OPC=nop             
  nop                          #  8     0xe31cb  1      OPC=nop             
  nop                          #  9     0xe31cc  1      OPC=nop             
  nop                          #  10    0xe31cd  1      OPC=nop             
  nop                          #  11    0xe31ce  1      OPC=nop             
  nop                          #  12    0xe31cf  1      OPC=nop             
  nop                          #  13    0xe31d0  1      OPC=nop             
  nop                          #  14    0xe31d1  1      OPC=nop             
  nop                          #  15    0xe31d2  1      OPC=nop             
  nop                          #  16    0xe31d3  1      OPC=nop             
  nop                          #  17    0xe31d4  1      OPC=nop             
  nop                          #  18    0xe31d5  1      OPC=nop             
  nop                          #  19    0xe31d6  1      OPC=nop             
  nop                          #  20    0xe31d7  1      OPC=nop             
  nop                          #  21    0xe31d8  1      OPC=nop             
  nop                          #  22    0xe31d9  1      OPC=nop             
  nop                          #  23    0xe31da  1      OPC=nop             
  callq .__cxa_get_globals     #  24    0xe31db  5      OPC=callq_label     
  movl %eax, %eax              #  25    0xe31e0  2      OPC=movl_r32_r32    
  movl %eax, %eax              #  26    0xe31e2  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax  #  27    0xe31e4  5      OPC=movl_r32_m32    
  testl %eax, %eax             #  28    0xe31e9  2      OPC=testl_r32_r32   
  setne %al                    #  29    0xe31eb  3      OPC=setne_r8        
  addl $0x8, %esp              #  30    0xe31ee  3      OPC=addl_r32_imm8   
  addq %r15, %rsp              #  31    0xe31f1  3      OPC=addq_r64_r64    
  popq %r11                    #  32    0xe31f4  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  33    0xe31f6  7      OPC=andl_r32_imm32  
  nop                          #  34    0xe31fd  1      OPC=nop             
  nop                          #  35    0xe31fe  1      OPC=nop             
  nop                          #  36    0xe31ff  1      OPC=nop             
  nop                          #  37    0xe3200  1      OPC=nop             
  addq %r15, %r11              #  38    0xe3201  3      OPC=addq_r64_r64    
  jmpq %r11                    #  39    0xe3204  3      OPC=jmpq_r64        
                                                                            
.size _ZSt18uncaught_exceptionv, .-_ZSt18uncaught_exceptionv

