  .text
  .globl stringfile_close
  .type stringfile_close, @function

#! file-offset 0x6b760
#! rip-offset  0x2b760
#! capacity    96 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.stringfile_close:             #        0x2b760  0      OPC=<label>         
  pushq %rbx                   #  1     0x2b760  1      OPC=pushq_r64_1     
  movl %edi, %ebx              #  2     0x2b761  2      OPC=movl_r32_r32    
  movl %ebx, %ebx              #  3     0x2b763  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rbx,1), %ecx  #  4     0x2b765  5      OPC=movl_r32_m32    
  testl %ecx, %ecx             #  5     0x2b76a  2      OPC=testl_r32_r32   
  je .L_2b780                  #  6     0x2b76c  2      OPC=je_label        
  movl %ebx, %ebx              #  7     0x2b76e  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %edi     #  8     0x2b770  4      OPC=movl_r32_m32    
  nop                          #  9     0x2b774  1      OPC=nop             
  nop                          #  10    0x2b775  1      OPC=nop             
  nop                          #  11    0x2b776  1      OPC=nop             
  nop                          #  12    0x2b777  1      OPC=nop             
  nop                          #  13    0x2b778  1      OPC=nop             
  nop                          #  14    0x2b779  1      OPC=nop             
  nop                          #  15    0x2b77a  1      OPC=nop             
  callq .free                  #  16    0x2b77b  5      OPC=callq_label     
.L_2b780:                      #        0x2b780  0      OPC=<label>         
  movl %ebx, %edi              #  17    0x2b780  2      OPC=movl_r32_r32    
  nop                          #  18    0x2b782  1      OPC=nop             
  nop                          #  19    0x2b783  1      OPC=nop             
  nop                          #  20    0x2b784  1      OPC=nop             
  nop                          #  21    0x2b785  1      OPC=nop             
  nop                          #  22    0x2b786  1      OPC=nop             
  nop                          #  23    0x2b787  1      OPC=nop             
  nop                          #  24    0x2b788  1      OPC=nop             
  nop                          #  25    0x2b789  1      OPC=nop             
  nop                          #  26    0x2b78a  1      OPC=nop             
  nop                          #  27    0x2b78b  1      OPC=nop             
  nop                          #  28    0x2b78c  1      OPC=nop             
  nop                          #  29    0x2b78d  1      OPC=nop             
  nop                          #  30    0x2b78e  1      OPC=nop             
  nop                          #  31    0x2b78f  1      OPC=nop             
  nop                          #  32    0x2b790  1      OPC=nop             
  nop                          #  33    0x2b791  1      OPC=nop             
  nop                          #  34    0x2b792  1      OPC=nop             
  nop                          #  35    0x2b793  1      OPC=nop             
  nop                          #  36    0x2b794  1      OPC=nop             
  nop                          #  37    0x2b795  1      OPC=nop             
  nop                          #  38    0x2b796  1      OPC=nop             
  nop                          #  39    0x2b797  1      OPC=nop             
  nop                          #  40    0x2b798  1      OPC=nop             
  nop                          #  41    0x2b799  1      OPC=nop             
  nop                          #  42    0x2b79a  1      OPC=nop             
  callq .free                  #  43    0x2b79b  5      OPC=callq_label     
  xorl %eax, %eax              #  44    0x2b7a0  2      OPC=xorl_r32_r32    
  popq %rbx                    #  45    0x2b7a2  1      OPC=popq_r64_1      
  popq %r11                    #  46    0x2b7a3  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  47    0x2b7a5  7      OPC=andl_r32_imm32  
  nop                          #  48    0x2b7ac  1      OPC=nop             
  nop                          #  49    0x2b7ad  1      OPC=nop             
  nop                          #  50    0x2b7ae  1      OPC=nop             
  nop                          #  51    0x2b7af  1      OPC=nop             
  addq %r15, %r11              #  52    0x2b7b0  3      OPC=addq_r64_r64    
  jmpq %r11                    #  53    0x2b7b3  3      OPC=jmpq_r64        
  xchgw %ax, %ax               #  54    0x2b7b6  2      OPC=xchgw_ax_r16    
  nop                          #  55    0x2b7b8  1      OPC=nop             
  nop                          #  56    0x2b7b9  1      OPC=nop             
  nop                          #  57    0x2b7ba  1      OPC=nop             
  nop                          #  58    0x2b7bb  1      OPC=nop             
  nop                          #  59    0x2b7bc  1      OPC=nop             
  nop                          #  60    0x2b7bd  1      OPC=nop             
  nop                          #  61    0x2b7be  1      OPC=nop             
  nop                          #  62    0x2b7bf  1      OPC=nop             
  nop                          #  63    0x2b7c0  1      OPC=nop             
  nop                          #  64    0x2b7c1  1      OPC=nop             
  nop                          #  65    0x2b7c2  1      OPC=nop             
  nop                          #  66    0x2b7c3  1      OPC=nop             
  nop                          #  67    0x2b7c4  1      OPC=nop             
  nop                          #  68    0x2b7c5  1      OPC=nop             
  nop                          #  69    0x2b7c6  1      OPC=nop             
                                                                            
.size stringfile_close, .-stringfile_close

