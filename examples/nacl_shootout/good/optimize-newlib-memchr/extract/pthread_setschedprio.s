  .text
  .globl pthread_setschedprio
  .type pthread_setschedprio, @function

#! file-offset 0x6ed80
#! rip-offset  0x2ed80
#! capacity    160 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.pthread_setschedprio:         #        0x2ed80  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)       #  1     0x2ed80  5      OPC=movq_m64_r64    
  movq %r12, -0x8(%rsp)        #  2     0x2ed85  5      OPC=movq_m64_r64    
  movl %edi, %ebx              #  3     0x2ed8a  2      OPC=movl_r32_r32    
  subl $0x18, %esp             #  4     0x2ed8c  3      OPC=subl_r32_imm8   
  addq %r15, %rsp              #  5     0x2ed8f  3      OPC=addq_r64_r64    
  movl %esi, %r12d             #  6     0x2ed92  3      OPC=movl_r32_r32    
  nop                          #  7     0x2ed95  1      OPC=nop             
  nop                          #  8     0x2ed96  1      OPC=nop             
  nop                          #  9     0x2ed97  1      OPC=nop             
  nop                          #  10    0x2ed98  1      OPC=nop             
  nop                          #  11    0x2ed99  1      OPC=nop             
  nop                          #  12    0x2ed9a  1      OPC=nop             
  callq .pthread_self          #  13    0x2ed9b  5      OPC=callq_label     
  cmpl %ebx, %eax              #  14    0x2eda0  2      OPC=cmpl_r32_r32    
  je .L_2ede0                  #  15    0x2eda2  2      OPC=je_label        
  movq 0x8(%rsp), %rbx         #  16    0x2eda4  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12        #  17    0x2eda9  5      OPC=movq_r64_m64    
  addl $0x18, %esp             #  18    0x2edae  3      OPC=addl_r32_imm8   
  addq %r15, %rsp              #  19    0x2edb1  3      OPC=addq_r64_r64    
  popq %r11                    #  20    0x2edb4  2      OPC=popq_r64_1      
  movl $0x1, %eax              #  21    0x2edb6  5      OPC=movl_r32_imm32  
  nop                          #  22    0x2edbb  1      OPC=nop             
  nop                          #  23    0x2edbc  1      OPC=nop             
  nop                          #  24    0x2edbd  1      OPC=nop             
  nop                          #  25    0x2edbe  1      OPC=nop             
  nop                          #  26    0x2edbf  1      OPC=nop             
  andl $0xffffffe0, %r11d      #  27    0x2edc0  7      OPC=andl_r32_imm32  
  nop                          #  28    0x2edc7  1      OPC=nop             
  nop                          #  29    0x2edc8  1      OPC=nop             
  nop                          #  30    0x2edc9  1      OPC=nop             
  nop                          #  31    0x2edca  1      OPC=nop             
  addq %r15, %r11              #  32    0x2edcb  3      OPC=addq_r64_r64    
  jmpq %r11                    #  33    0x2edce  3      OPC=jmpq_r64        
  nop                          #  34    0x2edd1  1      OPC=nop             
  nop                          #  35    0x2edd2  1      OPC=nop             
  nop                          #  36    0x2edd3  1      OPC=nop             
  nop                          #  37    0x2edd4  1      OPC=nop             
  nop                          #  38    0x2edd5  1      OPC=nop             
  nop                          #  39    0x2edd6  1      OPC=nop             
  nop                          #  40    0x2edd7  1      OPC=nop             
  nop                          #  41    0x2edd8  1      OPC=nop             
  nop                          #  42    0x2edd9  1      OPC=nop             
  nop                          #  43    0x2edda  1      OPC=nop             
  nop                          #  44    0x2eddb  1      OPC=nop             
  nop                          #  45    0x2eddc  1      OPC=nop             
  nop                          #  46    0x2eddd  1      OPC=nop             
  nop                          #  47    0x2edde  1      OPC=nop             
  nop                          #  48    0x2eddf  1      OPC=nop             
  nop                          #  49    0x2ede0  1      OPC=nop             
  nop                          #  50    0x2ede1  1      OPC=nop             
  nop                          #  51    0x2ede2  1      OPC=nop             
  nop                          #  52    0x2ede3  1      OPC=nop             
  nop                          #  53    0x2ede4  1      OPC=nop             
  nop                          #  54    0x2ede5  1      OPC=nop             
  nop                          #  55    0x2ede6  1      OPC=nop             
.L_2ede0:                      #        0x2ede7  0      OPC=<label>         
  movl 0x1004a43a(%rip), %eax  #  56    0x2ede7  6      OPC=movl_r32_m32    
  movl %r12d, %edi             #  57    0x2eded  3      OPC=movl_r32_r32    
  movq 0x8(%rsp), %rbx         #  58    0x2edf0  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12        #  59    0x2edf5  5      OPC=movq_r64_m64    
  addl $0x18, %esp             #  60    0x2edfa  3      OPC=addl_r32_imm8   
  addq %r15, %rsp              #  61    0x2edfd  3      OPC=addq_r64_r64    
  nop                          #  62    0x2ee00  1      OPC=nop             
  nop                          #  63    0x2ee01  1      OPC=nop             
  nop                          #  64    0x2ee02  1      OPC=nop             
  nop                          #  65    0x2ee03  1      OPC=nop             
  nop                          #  66    0x2ee04  1      OPC=nop             
  nop                          #  67    0x2ee05  1      OPC=nop             
  nop                          #  68    0x2ee06  1      OPC=nop             
  andl $0xffffffe0, %eax       #  69    0x2ee07  6      OPC=andl_r32_imm32  
  nop                          #  70    0x2ee0d  1      OPC=nop             
  nop                          #  71    0x2ee0e  1      OPC=nop             
  nop                          #  72    0x2ee0f  1      OPC=nop             
  addq %r15, %rax              #  73    0x2ee10  3      OPC=addq_r64_r64    
  jmpq %rax                    #  74    0x2ee13  2      OPC=jmpq_r64        
  nop                          #  75    0x2ee15  1      OPC=nop             
  nop                          #  76    0x2ee16  1      OPC=nop             
  nop                          #  77    0x2ee17  1      OPC=nop             
  nop                          #  78    0x2ee18  1      OPC=nop             
  nop                          #  79    0x2ee19  1      OPC=nop             
  nop                          #  80    0x2ee1a  1      OPC=nop             
  nop                          #  81    0x2ee1b  1      OPC=nop             
  nop                          #  82    0x2ee1c  1      OPC=nop             
  nop                          #  83    0x2ee1d  1      OPC=nop             
  nop                          #  84    0x2ee1e  1      OPC=nop             
  nop                          #  85    0x2ee1f  1      OPC=nop             
  nop                          #  86    0x2ee20  1      OPC=nop             
  nop                          #  87    0x2ee21  1      OPC=nop             
  nop                          #  88    0x2ee22  1      OPC=nop             
  nop                          #  89    0x2ee23  1      OPC=nop             
  nop                          #  90    0x2ee24  1      OPC=nop             
  nop                          #  91    0x2ee25  1      OPC=nop             
  nop                          #  92    0x2ee26  1      OPC=nop             
  nop                          #  93    0x2ee27  1      OPC=nop             
  nop                          #  94    0x2ee28  1      OPC=nop             
  nop                          #  95    0x2ee29  1      OPC=nop             
  nop                          #  96    0x2ee2a  1      OPC=nop             
  nop                          #  97    0x2ee2b  1      OPC=nop             
  nop                          #  98    0x2ee2c  1      OPC=nop             
                                                                            
.size pthread_setschedprio, .-pthread_setschedprio

