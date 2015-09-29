  .text
  .globl Finish
  .type Finish, @function

#! file-offset 0x670c0
#! rip-offset  0x270c0
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.Finish:                       #        0x270c0  0      OPC=<label>         
  pushq %rbx                   #  1     0x270c0  1      OPC=pushq_r64_1     
  movl %edi, %ebx              #  2     0x270c1  2      OPC=movl_r32_r32    
  xorl %eax, %eax              #  3     0x270c3  2      OPC=xorl_r32_r32    
  nop                          #  4     0x270c5  1      OPC=nop             
  nop                          #  5     0x270c6  1      OPC=nop             
  nop                          #  6     0x270c7  1      OPC=nop             
  nop                          #  7     0x270c8  1      OPC=nop             
  nop                          #  8     0x270c9  1      OPC=nop             
  nop                          #  9     0x270ca  1      OPC=nop             
  nop                          #  10    0x270cb  1      OPC=nop             
  nop                          #  11    0x270cc  1      OPC=nop             
  nop                          #  12    0x270cd  1      OPC=nop             
  nop                          #  13    0x270ce  1      OPC=nop             
  nop                          #  14    0x270cf  1      OPC=nop             
  nop                          #  15    0x270d0  1      OPC=nop             
  nop                          #  16    0x270d1  1      OPC=nop             
  nop                          #  17    0x270d2  1      OPC=nop             
  nop                          #  18    0x270d3  1      OPC=nop             
  nop                          #  19    0x270d4  1      OPC=nop             
  nop                          #  20    0x270d5  1      OPC=nop             
  nop                          #  21    0x270d6  1      OPC=nop             
  nop                          #  22    0x270d7  1      OPC=nop             
  nop                          #  23    0x270d8  1      OPC=nop             
  nop                          #  24    0x270d9  1      OPC=nop             
  nop                          #  25    0x270da  1      OPC=nop             
  callq .Milliseconds          #  26    0x270db  5      OPC=callq_label     
  subl 0x100520d6(%rip), %eax  #  27    0x270e0  6      OPC=subl_r32_m32    
  movl %ebx, %ebx              #  28    0x270e6  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)     #  29    0x270e8  4      OPC=movl_m32_r32    
  popq %rbx                    #  30    0x270ec  1      OPC=popq_r64_1      
  popq %r11                    #  31    0x270ed  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  32    0x270ef  7      OPC=andl_r32_imm32  
  nop                          #  33    0x270f6  1      OPC=nop             
  nop                          #  34    0x270f7  1      OPC=nop             
  nop                          #  35    0x270f8  1      OPC=nop             
  nop                          #  36    0x270f9  1      OPC=nop             
  addq %r15, %r11              #  37    0x270fa  3      OPC=addq_r64_r64    
  jmpq %r11                    #  38    0x270fd  3      OPC=jmpq_r64        
  nop                          #  39    0x27100  1      OPC=nop             
  nop                          #  40    0x27101  1      OPC=nop             
  nop                          #  41    0x27102  1      OPC=nop             
  nop                          #  42    0x27103  1      OPC=nop             
  nop                          #  43    0x27104  1      OPC=nop             
  nop                          #  44    0x27105  1      OPC=nop             
  nop                          #  45    0x27106  1      OPC=nop             
                                                                            
.size Finish, .-Finish

