  .text
  .globl stringfile_close
  .type stringfile_close, @function

#! file-offset 0x6b040
#! rip-offset  0x2b040
#! capacity    96 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.stringfile_close:             #        0x2b040  0      OPC=<label>         
  pushq %rbx                   #  1     0x2b040  1      OPC=pushq_r64_1     
  movl %edi, %ebx              #  2     0x2b041  2      OPC=movl_r32_r32    
  movl %ebx, %ebx              #  3     0x2b043  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rbx,1), %ecx  #  4     0x2b045  5      OPC=movl_r32_m32    
  testl %ecx, %ecx             #  5     0x2b04a  2      OPC=testl_r32_r32   
  je .L_2b060                  #  6     0x2b04c  2      OPC=je_label        
  movl %ebx, %ebx              #  7     0x2b04e  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %edi     #  8     0x2b050  4      OPC=movl_r32_m32    
  nop                          #  9     0x2b054  1      OPC=nop             
  nop                          #  10    0x2b055  1      OPC=nop             
  nop                          #  11    0x2b056  1      OPC=nop             
  nop                          #  12    0x2b057  1      OPC=nop             
  nop                          #  13    0x2b058  1      OPC=nop             
  nop                          #  14    0x2b059  1      OPC=nop             
  nop                          #  15    0x2b05a  1      OPC=nop             
  callq .free                  #  16    0x2b05b  5      OPC=callq_label     
.L_2b060:                      #        0x2b060  0      OPC=<label>         
  movl %ebx, %edi              #  17    0x2b060  2      OPC=movl_r32_r32    
  nop                          #  18    0x2b062  1      OPC=nop             
  nop                          #  19    0x2b063  1      OPC=nop             
  nop                          #  20    0x2b064  1      OPC=nop             
  nop                          #  21    0x2b065  1      OPC=nop             
  nop                          #  22    0x2b066  1      OPC=nop             
  nop                          #  23    0x2b067  1      OPC=nop             
  nop                          #  24    0x2b068  1      OPC=nop             
  nop                          #  25    0x2b069  1      OPC=nop             
  nop                          #  26    0x2b06a  1      OPC=nop             
  nop                          #  27    0x2b06b  1      OPC=nop             
  nop                          #  28    0x2b06c  1      OPC=nop             
  nop                          #  29    0x2b06d  1      OPC=nop             
  nop                          #  30    0x2b06e  1      OPC=nop             
  nop                          #  31    0x2b06f  1      OPC=nop             
  nop                          #  32    0x2b070  1      OPC=nop             
  nop                          #  33    0x2b071  1      OPC=nop             
  nop                          #  34    0x2b072  1      OPC=nop             
  nop                          #  35    0x2b073  1      OPC=nop             
  nop                          #  36    0x2b074  1      OPC=nop             
  nop                          #  37    0x2b075  1      OPC=nop             
  nop                          #  38    0x2b076  1      OPC=nop             
  nop                          #  39    0x2b077  1      OPC=nop             
  nop                          #  40    0x2b078  1      OPC=nop             
  nop                          #  41    0x2b079  1      OPC=nop             
  nop                          #  42    0x2b07a  1      OPC=nop             
  callq .free                  #  43    0x2b07b  5      OPC=callq_label     
  xorl %eax, %eax              #  44    0x2b080  2      OPC=xorl_r32_r32    
  popq %rbx                    #  45    0x2b082  1      OPC=popq_r64_1      
  popq %r11                    #  46    0x2b083  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  47    0x2b085  7      OPC=andl_r32_imm32  
  nop                          #  48    0x2b08c  1      OPC=nop             
  nop                          #  49    0x2b08d  1      OPC=nop             
  nop                          #  50    0x2b08e  1      OPC=nop             
  nop                          #  51    0x2b08f  1      OPC=nop             
  addq %r15, %r11              #  52    0x2b090  3      OPC=addq_r64_r64    
  jmpq %r11                    #  53    0x2b093  3      OPC=jmpq_r64        
  xchgw %ax, %ax               #  54    0x2b096  2      OPC=xchgw_ax_r16    
  nop                          #  55    0x2b098  1      OPC=nop             
  nop                          #  56    0x2b099  1      OPC=nop             
  nop                          #  57    0x2b09a  1      OPC=nop             
  nop                          #  58    0x2b09b  1      OPC=nop             
  nop                          #  59    0x2b09c  1      OPC=nop             
  nop                          #  60    0x2b09d  1      OPC=nop             
  nop                          #  61    0x2b09e  1      OPC=nop             
  nop                          #  62    0x2b09f  1      OPC=nop             
  nop                          #  63    0x2b0a0  1      OPC=nop             
  nop                          #  64    0x2b0a1  1      OPC=nop             
  nop                          #  65    0x2b0a2  1      OPC=nop             
  nop                          #  66    0x2b0a3  1      OPC=nop             
  nop                          #  67    0x2b0a4  1      OPC=nop             
  nop                          #  68    0x2b0a5  1      OPC=nop             
  nop                          #  69    0x2b0a6  1      OPC=nop             
                                                                            
.size stringfile_close, .-stringfile_close

