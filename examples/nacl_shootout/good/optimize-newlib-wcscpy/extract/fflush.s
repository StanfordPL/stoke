  .text
  .globl fflush
  .type fflush, @function

#! file-offset 0x15a080
#! rip-offset  0x11a080
#! capacity    96 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.fflush:                      #        0x11a080  0      OPC=<label>         
  pushq %rbx                  #  1     0x11a080  1      OPC=pushq_r64_1     
  movl %edi, %ebx             #  2     0x11a081  2      OPC=movl_r32_r32    
  testq %rbx, %rbx            #  3     0x11a083  3      OPC=testq_r64_r64   
  je .L_11a0c0                #  4     0x11a086  2      OPC=je_label        
  nop                         #  5     0x11a088  1      OPC=nop             
  nop                         #  6     0x11a089  1      OPC=nop             
  nop                         #  7     0x11a08a  1      OPC=nop             
  nop                         #  8     0x11a08b  1      OPC=nop             
  nop                         #  9     0x11a08c  1      OPC=nop             
  nop                         #  10    0x11a08d  1      OPC=nop             
  nop                         #  11    0x11a08e  1      OPC=nop             
  nop                         #  12    0x11a08f  1      OPC=nop             
  nop                         #  13    0x11a090  1      OPC=nop             
  nop                         #  14    0x11a091  1      OPC=nop             
  nop                         #  15    0x11a092  1      OPC=nop             
  nop                         #  16    0x11a093  1      OPC=nop             
  nop                         #  17    0x11a094  1      OPC=nop             
  nop                         #  18    0x11a095  1      OPC=nop             
  nop                         #  19    0x11a096  1      OPC=nop             
  nop                         #  20    0x11a097  1      OPC=nop             
  nop                         #  21    0x11a098  1      OPC=nop             
  nop                         #  22    0x11a099  1      OPC=nop             
  nop                         #  23    0x11a09a  1      OPC=nop             
  callq .__nacl_read_tp       #  24    0x11a09b  5      OPC=callq_label     
  leaq -0x480(%rax), %rax     #  25    0x11a0a0  7      OPC=leaq_r64_m16    
  movl %ebx, %esi             #  26    0x11a0a7  2      OPC=movl_r32_r32    
  popq %rbx                   #  27    0x11a0a9  1      OPC=popq_r64_1      
  movl %eax, %eax             #  28    0x11a0aa  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi    #  29    0x11a0ac  4      OPC=movl_r32_m32    
  jmpq ._fflush_r             #  30    0x11a0b0  5      OPC=jmpq_label_1    
  nop                         #  31    0x11a0b5  1      OPC=nop             
  nop                         #  32    0x11a0b6  1      OPC=nop             
  nop                         #  33    0x11a0b7  1      OPC=nop             
  nop                         #  34    0x11a0b8  1      OPC=nop             
  nop                         #  35    0x11a0b9  1      OPC=nop             
  nop                         #  36    0x11a0ba  1      OPC=nop             
  nop                         #  37    0x11a0bb  1      OPC=nop             
  nop                         #  38    0x11a0bc  1      OPC=nop             
  nop                         #  39    0x11a0bd  1      OPC=nop             
  nop                         #  40    0x11a0be  1      OPC=nop             
  nop                         #  41    0x11a0bf  1      OPC=nop             
.L_11a0c0:                    #        0x11a0c0  0      OPC=<label>         
  popq %rbx                   #  42    0x11a0c0  1      OPC=popq_r64_1      
  movl 0xff26d19(%rip), %edi  #  43    0x11a0c1  6      OPC=movl_r32_m32    
  movl $0x119f00, %esi        #  44    0x11a0c7  5      OPC=movl_r32_imm32  
  jmpq ._fwalk_reent          #  45    0x11a0cc  5      OPC=jmpq_label_1    
  nop                         #  46    0x11a0d1  1      OPC=nop             
  nop                         #  47    0x11a0d2  1      OPC=nop             
  nop                         #  48    0x11a0d3  1      OPC=nop             
  nop                         #  49    0x11a0d4  1      OPC=nop             
  nop                         #  50    0x11a0d5  1      OPC=nop             
  nop                         #  51    0x11a0d6  1      OPC=nop             
  nop                         #  52    0x11a0d7  1      OPC=nop             
  nop                         #  53    0x11a0d8  1      OPC=nop             
  nop                         #  54    0x11a0d9  1      OPC=nop             
  nop                         #  55    0x11a0da  1      OPC=nop             
  nop                         #  56    0x11a0db  1      OPC=nop             
  nop                         #  57    0x11a0dc  1      OPC=nop             
  nop                         #  58    0x11a0dd  1      OPC=nop             
  nop                         #  59    0x11a0de  1      OPC=nop             
  nop                         #  60    0x11a0df  1      OPC=nop             
                                                                            
.size fflush, .-fflush

