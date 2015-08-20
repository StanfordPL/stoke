  .text
  .globl DO_mpn_sublsh_n
  .type DO_mpn_sublsh_n, @function

#! file-offset 0x8fea0
#! rip-offset  0x4fea0
#! capacity    160 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.DO_mpn_sublsh_n:          #        0x4fea0  0      OPC=<label>         
  movq %r13, -0x10(%rsp)   #  1     0x4fea0  5      OPC=movq_m64_r64    
  movl %r8d, %r13d         #  2     0x4fea5  3      OPC=movl_r32_r32    
  movq %rbx, -0x20(%rsp)   #  3     0x4fea8  5      OPC=movq_m64_r64    
  movq %r12, -0x18(%rsp)   #  4     0x4fead  5      OPC=movq_m64_r64    
  movl %edx, %ebx          #  5     0x4feb2  2      OPC=movl_r32_r32    
  movl %edi, %r12d         #  6     0x4feb4  3      OPC=movl_r32_r32    
  movq %r14, -0x8(%rsp)    #  7     0x4feb7  5      OPC=movq_m64_r64    
  movl %r13d, %edi         #  8     0x4febc  3      OPC=movl_r32_r32    
  nop                      #  9     0x4febf  1      OPC=nop             
  subl $0x28, %esp         #  10    0x4fec0  3      OPC=subl_r32_imm8   
  addq %r15, %rsp          #  11    0x4fec3  3      OPC=addq_r64_r64    
  movl %esi, %esi          #  12    0x4fec6  2      OPC=movl_r32_r32    
  nop                      #  13    0x4fec8  1      OPC=nop             
  nop                      #  14    0x4fec9  1      OPC=nop             
  nop                      #  15    0x4feca  1      OPC=nop             
  nop                      #  16    0x4fecb  1      OPC=nop             
  nop                      #  17    0x4fecc  1      OPC=nop             
  nop                      #  18    0x4fecd  1      OPC=nop             
  nop                      #  19    0x4fece  1      OPC=nop             
  nop                      #  20    0x4fecf  1      OPC=nop             
  nop                      #  21    0x4fed0  1      OPC=nop             
  nop                      #  22    0x4fed1  1      OPC=nop             
  nop                      #  23    0x4fed2  1      OPC=nop             
  nop                      #  24    0x4fed3  1      OPC=nop             
  nop                      #  25    0x4fed4  1      OPC=nop             
  nop                      #  26    0x4fed5  1      OPC=nop             
  nop                      #  27    0x4fed6  1      OPC=nop             
  nop                      #  28    0x4fed7  1      OPC=nop             
  nop                      #  29    0x4fed8  1      OPC=nop             
  nop                      #  30    0x4fed9  1      OPC=nop             
  nop                      #  31    0x4feda  1      OPC=nop             
  callq .__gmpn_lshift     #  32    0x4fedb  5      OPC=callq_label     
  movl %ebx, %ecx          #  33    0x4fee0  2      OPC=movl_r32_r32    
  movl %eax, %r14d         #  34    0x4fee2  3      OPC=movl_r32_r32    
  movl %r13d, %edx         #  35    0x4fee5  3      OPC=movl_r32_r32    
  movl %r12d, %esi         #  36    0x4fee8  3      OPC=movl_r32_r32    
  movl %r12d, %edi         #  37    0x4feeb  3      OPC=movl_r32_r32    
  nop                      #  38    0x4feee  1      OPC=nop             
  nop                      #  39    0x4feef  1      OPC=nop             
  nop                      #  40    0x4fef0  1      OPC=nop             
  nop                      #  41    0x4fef1  1      OPC=nop             
  nop                      #  42    0x4fef2  1      OPC=nop             
  nop                      #  43    0x4fef3  1      OPC=nop             
  nop                      #  44    0x4fef4  1      OPC=nop             
  nop                      #  45    0x4fef5  1      OPC=nop             
  nop                      #  46    0x4fef6  1      OPC=nop             
  nop                      #  47    0x4fef7  1      OPC=nop             
  nop                      #  48    0x4fef8  1      OPC=nop             
  nop                      #  49    0x4fef9  1      OPC=nop             
  nop                      #  50    0x4fefa  1      OPC=nop             
  callq .__gmpn_sub_n      #  51    0x4fefb  5      OPC=callq_label     
  movq 0x8(%rsp), %rbx     #  52    0x4ff00  5      OPC=movq_r64_m64    
  addl %r14d, %eax         #  53    0x4ff05  3      OPC=addl_r32_r32    
  movq 0x10(%rsp), %r12    #  54    0x4ff08  5      OPC=movq_r64_m64    
  movq 0x18(%rsp), %r13    #  55    0x4ff0d  5      OPC=movq_r64_m64    
  movq 0x20(%rsp), %r14    #  56    0x4ff12  5      OPC=movq_r64_m64    
  addl $0x28, %esp         #  57    0x4ff17  3      OPC=addl_r32_imm8   
  addq %r15, %rsp          #  58    0x4ff1a  3      OPC=addq_r64_r64    
  popq %r11                #  59    0x4ff1d  2      OPC=popq_r64_1      
  nop                      #  60    0x4ff1f  1      OPC=nop             
  andl $0xffffffe0, %r11d  #  61    0x4ff20  7      OPC=andl_r32_imm32  
  nop                      #  62    0x4ff27  1      OPC=nop             
  nop                      #  63    0x4ff28  1      OPC=nop             
  nop                      #  64    0x4ff29  1      OPC=nop             
  nop                      #  65    0x4ff2a  1      OPC=nop             
  addq %r15, %r11          #  66    0x4ff2b  3      OPC=addq_r64_r64    
  jmpq %r11                #  67    0x4ff2e  3      OPC=jmpq_r64        
  nop                      #  68    0x4ff31  1      OPC=nop             
  nop                      #  69    0x4ff32  1      OPC=nop             
  nop                      #  70    0x4ff33  1      OPC=nop             
  nop                      #  71    0x4ff34  1      OPC=nop             
  nop                      #  72    0x4ff35  1      OPC=nop             
  nop                      #  73    0x4ff36  1      OPC=nop             
  nop                      #  74    0x4ff37  1      OPC=nop             
  nop                      #  75    0x4ff38  1      OPC=nop             
  nop                      #  76    0x4ff39  1      OPC=nop             
  nop                      #  77    0x4ff3a  1      OPC=nop             
  nop                      #  78    0x4ff3b  1      OPC=nop             
  nop                      #  79    0x4ff3c  1      OPC=nop             
  nop                      #  80    0x4ff3d  1      OPC=nop             
  nop                      #  81    0x4ff3e  1      OPC=nop             
  nop                      #  82    0x4ff3f  1      OPC=nop             
  nop                      #  83    0x4ff40  1      OPC=nop             
  nop                      #  84    0x4ff41  1      OPC=nop             
  nop                      #  85    0x4ff42  1      OPC=nop             
  nop                      #  86    0x4ff43  1      OPC=nop             
  nop                      #  87    0x4ff44  1      OPC=nop             
  nop                      #  88    0x4ff45  1      OPC=nop             
  nop                      #  89    0x4ff46  1      OPC=nop             
                                                                        
.size DO_mpn_sublsh_n, .-DO_mpn_sublsh_n

