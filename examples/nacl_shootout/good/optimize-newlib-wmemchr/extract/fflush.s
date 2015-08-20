  .text
  .globl fflush
  .type fflush, @function

#! file-offset 0x15a380
#! rip-offset  0x11a380
#! capacity    96 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.fflush:                      #        0x11a380  0      OPC=<label>         
  pushq %rbx                  #  1     0x11a380  1      OPC=pushq_r64_1     
  movl %edi, %ebx             #  2     0x11a381  2      OPC=movl_r32_r32    
  testq %rbx, %rbx            #  3     0x11a383  3      OPC=testq_r64_r64   
  je .L_11a3c0                #  4     0x11a386  2      OPC=je_label        
  nop                         #  5     0x11a388  1      OPC=nop             
  nop                         #  6     0x11a389  1      OPC=nop             
  nop                         #  7     0x11a38a  1      OPC=nop             
  nop                         #  8     0x11a38b  1      OPC=nop             
  nop                         #  9     0x11a38c  1      OPC=nop             
  nop                         #  10    0x11a38d  1      OPC=nop             
  nop                         #  11    0x11a38e  1      OPC=nop             
  nop                         #  12    0x11a38f  1      OPC=nop             
  nop                         #  13    0x11a390  1      OPC=nop             
  nop                         #  14    0x11a391  1      OPC=nop             
  nop                         #  15    0x11a392  1      OPC=nop             
  nop                         #  16    0x11a393  1      OPC=nop             
  nop                         #  17    0x11a394  1      OPC=nop             
  nop                         #  18    0x11a395  1      OPC=nop             
  nop                         #  19    0x11a396  1      OPC=nop             
  nop                         #  20    0x11a397  1      OPC=nop             
  nop                         #  21    0x11a398  1      OPC=nop             
  nop                         #  22    0x11a399  1      OPC=nop             
  nop                         #  23    0x11a39a  1      OPC=nop             
  callq .__nacl_read_tp       #  24    0x11a39b  5      OPC=callq_label     
  leaq -0x480(%rax), %rax     #  25    0x11a3a0  7      OPC=leaq_r64_m16    
  movl %ebx, %esi             #  26    0x11a3a7  2      OPC=movl_r32_r32    
  popq %rbx                   #  27    0x11a3a9  1      OPC=popq_r64_1      
  movl %eax, %eax             #  28    0x11a3aa  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi    #  29    0x11a3ac  4      OPC=movl_r32_m32    
  jmpq ._fflush_r             #  30    0x11a3b0  5      OPC=jmpq_label_1    
  nop                         #  31    0x11a3b5  1      OPC=nop             
  nop                         #  32    0x11a3b6  1      OPC=nop             
  nop                         #  33    0x11a3b7  1      OPC=nop             
  nop                         #  34    0x11a3b8  1      OPC=nop             
  nop                         #  35    0x11a3b9  1      OPC=nop             
  nop                         #  36    0x11a3ba  1      OPC=nop             
  nop                         #  37    0x11a3bb  1      OPC=nop             
  nop                         #  38    0x11a3bc  1      OPC=nop             
  nop                         #  39    0x11a3bd  1      OPC=nop             
  nop                         #  40    0x11a3be  1      OPC=nop             
  nop                         #  41    0x11a3bf  1      OPC=nop             
.L_11a3c0:                    #        0x11a3c0  0      OPC=<label>         
  popq %rbx                   #  42    0x11a3c0  1      OPC=popq_r64_1      
  movl 0xff26a19(%rip), %edi  #  43    0x11a3c1  6      OPC=movl_r32_m32    
  movl $0x11a200, %esi        #  44    0x11a3c7  5      OPC=movl_r32_imm32  
  jmpq ._fwalk_reent          #  45    0x11a3cc  5      OPC=jmpq_label_1    
  nop                         #  46    0x11a3d1  1      OPC=nop             
  nop                         #  47    0x11a3d2  1      OPC=nop             
  nop                         #  48    0x11a3d3  1      OPC=nop             
  nop                         #  49    0x11a3d4  1      OPC=nop             
  nop                         #  50    0x11a3d5  1      OPC=nop             
  nop                         #  51    0x11a3d6  1      OPC=nop             
  nop                         #  52    0x11a3d7  1      OPC=nop             
  nop                         #  53    0x11a3d8  1      OPC=nop             
  nop                         #  54    0x11a3d9  1      OPC=nop             
  nop                         #  55    0x11a3da  1      OPC=nop             
  nop                         #  56    0x11a3db  1      OPC=nop             
  nop                         #  57    0x11a3dc  1      OPC=nop             
  nop                         #  58    0x11a3dd  1      OPC=nop             
  nop                         #  59    0x11a3de  1      OPC=nop             
  nop                         #  60    0x11a3df  1      OPC=nop             
                                                                            
.size fflush, .-fflush

