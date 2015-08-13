  .text
  .globl DO_mpn_sublsh_n
  .type DO_mpn_sublsh_n, @function

#! file-offset 0x8fba0
#! rip-offset  0x4fba0
#! capacity    160 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.DO_mpn_sublsh_n:          #        0x4fba0  0      OPC=<label>         
  movq %r13, -0x10(%rsp)   #  1     0x4fba0  5      OPC=movq_m64_r64    
  movl %r8d, %r13d         #  2     0x4fba5  3      OPC=movl_r32_r32    
  movq %rbx, -0x20(%rsp)   #  3     0x4fba8  5      OPC=movq_m64_r64    
  movq %r12, -0x18(%rsp)   #  4     0x4fbad  5      OPC=movq_m64_r64    
  movl %edx, %ebx          #  5     0x4fbb2  2      OPC=movl_r32_r32    
  movl %edi, %r12d         #  6     0x4fbb4  3      OPC=movl_r32_r32    
  movq %r14, -0x8(%rsp)    #  7     0x4fbb7  5      OPC=movq_m64_r64    
  movl %r13d, %edi         #  8     0x4fbbc  3      OPC=movl_r32_r32    
  nop                      #  9     0x4fbbf  1      OPC=nop             
  subl $0x28, %esp         #  10    0x4fbc0  3      OPC=subl_r32_imm8   
  addq %r15, %rsp          #  11    0x4fbc3  3      OPC=addq_r64_r64    
  movl %esi, %esi          #  12    0x4fbc6  2      OPC=movl_r32_r32    
  nop                      #  13    0x4fbc8  1      OPC=nop             
  nop                      #  14    0x4fbc9  1      OPC=nop             
  nop                      #  15    0x4fbca  1      OPC=nop             
  nop                      #  16    0x4fbcb  1      OPC=nop             
  nop                      #  17    0x4fbcc  1      OPC=nop             
  nop                      #  18    0x4fbcd  1      OPC=nop             
  nop                      #  19    0x4fbce  1      OPC=nop             
  nop                      #  20    0x4fbcf  1      OPC=nop             
  nop                      #  21    0x4fbd0  1      OPC=nop             
  nop                      #  22    0x4fbd1  1      OPC=nop             
  nop                      #  23    0x4fbd2  1      OPC=nop             
  nop                      #  24    0x4fbd3  1      OPC=nop             
  nop                      #  25    0x4fbd4  1      OPC=nop             
  nop                      #  26    0x4fbd5  1      OPC=nop             
  nop                      #  27    0x4fbd6  1      OPC=nop             
  nop                      #  28    0x4fbd7  1      OPC=nop             
  nop                      #  29    0x4fbd8  1      OPC=nop             
  nop                      #  30    0x4fbd9  1      OPC=nop             
  nop                      #  31    0x4fbda  1      OPC=nop             
  callq .__gmpn_lshift     #  32    0x4fbdb  5      OPC=callq_label     
  movl %ebx, %ecx          #  33    0x4fbe0  2      OPC=movl_r32_r32    
  movl %eax, %r14d         #  34    0x4fbe2  3      OPC=movl_r32_r32    
  movl %r13d, %edx         #  35    0x4fbe5  3      OPC=movl_r32_r32    
  movl %r12d, %esi         #  36    0x4fbe8  3      OPC=movl_r32_r32    
  movl %r12d, %edi         #  37    0x4fbeb  3      OPC=movl_r32_r32    
  nop                      #  38    0x4fbee  1      OPC=nop             
  nop                      #  39    0x4fbef  1      OPC=nop             
  nop                      #  40    0x4fbf0  1      OPC=nop             
  nop                      #  41    0x4fbf1  1      OPC=nop             
  nop                      #  42    0x4fbf2  1      OPC=nop             
  nop                      #  43    0x4fbf3  1      OPC=nop             
  nop                      #  44    0x4fbf4  1      OPC=nop             
  nop                      #  45    0x4fbf5  1      OPC=nop             
  nop                      #  46    0x4fbf6  1      OPC=nop             
  nop                      #  47    0x4fbf7  1      OPC=nop             
  nop                      #  48    0x4fbf8  1      OPC=nop             
  nop                      #  49    0x4fbf9  1      OPC=nop             
  nop                      #  50    0x4fbfa  1      OPC=nop             
  callq .__gmpn_sub_n      #  51    0x4fbfb  5      OPC=callq_label     
  movq 0x8(%rsp), %rbx     #  52    0x4fc00  5      OPC=movq_r64_m64    
  addl %r14d, %eax         #  53    0x4fc05  3      OPC=addl_r32_r32    
  movq 0x10(%rsp), %r12    #  54    0x4fc08  5      OPC=movq_r64_m64    
  movq 0x18(%rsp), %r13    #  55    0x4fc0d  5      OPC=movq_r64_m64    
  movq 0x20(%rsp), %r14    #  56    0x4fc12  5      OPC=movq_r64_m64    
  addl $0x28, %esp         #  57    0x4fc17  3      OPC=addl_r32_imm8   
  addq %r15, %rsp          #  58    0x4fc1a  3      OPC=addq_r64_r64    
  popq %r11                #  59    0x4fc1d  2      OPC=popq_r64_1      
  nop                      #  60    0x4fc1f  1      OPC=nop             
  andl $0xffffffe0, %r11d  #  61    0x4fc20  7      OPC=andl_r32_imm32  
  nop                      #  62    0x4fc27  1      OPC=nop             
  nop                      #  63    0x4fc28  1      OPC=nop             
  nop                      #  64    0x4fc29  1      OPC=nop             
  nop                      #  65    0x4fc2a  1      OPC=nop             
  addq %r15, %r11          #  66    0x4fc2b  3      OPC=addq_r64_r64    
  jmpq %r11                #  67    0x4fc2e  3      OPC=jmpq_r64        
  nop                      #  68    0x4fc31  1      OPC=nop             
  nop                      #  69    0x4fc32  1      OPC=nop             
  nop                      #  70    0x4fc33  1      OPC=nop             
  nop                      #  71    0x4fc34  1      OPC=nop             
  nop                      #  72    0x4fc35  1      OPC=nop             
  nop                      #  73    0x4fc36  1      OPC=nop             
  nop                      #  74    0x4fc37  1      OPC=nop             
  nop                      #  75    0x4fc38  1      OPC=nop             
  nop                      #  76    0x4fc39  1      OPC=nop             
  nop                      #  77    0x4fc3a  1      OPC=nop             
  nop                      #  78    0x4fc3b  1      OPC=nop             
  nop                      #  79    0x4fc3c  1      OPC=nop             
  nop                      #  80    0x4fc3d  1      OPC=nop             
  nop                      #  81    0x4fc3e  1      OPC=nop             
  nop                      #  82    0x4fc3f  1      OPC=nop             
  nop                      #  83    0x4fc40  1      OPC=nop             
  nop                      #  84    0x4fc41  1      OPC=nop             
  nop                      #  85    0x4fc42  1      OPC=nop             
  nop                      #  86    0x4fc43  1      OPC=nop             
  nop                      #  87    0x4fc44  1      OPC=nop             
  nop                      #  88    0x4fc45  1      OPC=nop             
  nop                      #  89    0x4fc46  1      OPC=nop             
                                                                        
.size DO_mpn_sublsh_n, .-DO_mpn_sublsh_n

