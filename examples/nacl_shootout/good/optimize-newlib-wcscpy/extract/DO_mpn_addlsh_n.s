  .text
  .globl DO_mpn_addlsh_n
  .type DO_mpn_addlsh_n, @function

#! file-offset 0x8bc00
#! rip-offset  0x4bc00
#! capacity    160 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.DO_mpn_addlsh_n:          #        0x4bc00  0      OPC=<label>         
  movq %r13, -0x10(%rsp)   #  1     0x4bc00  5      OPC=movq_m64_r64    
  movl %r8d, %r13d         #  2     0x4bc05  3      OPC=movl_r32_r32    
  movq %rbx, -0x20(%rsp)   #  3     0x4bc08  5      OPC=movq_m64_r64    
  movq %r12, -0x18(%rsp)   #  4     0x4bc0d  5      OPC=movq_m64_r64    
  movl %edx, %ebx          #  5     0x4bc12  2      OPC=movl_r32_r32    
  movl %edi, %r12d         #  6     0x4bc14  3      OPC=movl_r32_r32    
  movq %r14, -0x8(%rsp)    #  7     0x4bc17  5      OPC=movq_m64_r64    
  movl %r13d, %edi         #  8     0x4bc1c  3      OPC=movl_r32_r32    
  nop                      #  9     0x4bc1f  1      OPC=nop             
  subl $0x28, %esp         #  10    0x4bc20  3      OPC=subl_r32_imm8   
  addq %r15, %rsp          #  11    0x4bc23  3      OPC=addq_r64_r64    
  movl %esi, %esi          #  12    0x4bc26  2      OPC=movl_r32_r32    
  nop                      #  13    0x4bc28  1      OPC=nop             
  nop                      #  14    0x4bc29  1      OPC=nop             
  nop                      #  15    0x4bc2a  1      OPC=nop             
  nop                      #  16    0x4bc2b  1      OPC=nop             
  nop                      #  17    0x4bc2c  1      OPC=nop             
  nop                      #  18    0x4bc2d  1      OPC=nop             
  nop                      #  19    0x4bc2e  1      OPC=nop             
  nop                      #  20    0x4bc2f  1      OPC=nop             
  nop                      #  21    0x4bc30  1      OPC=nop             
  nop                      #  22    0x4bc31  1      OPC=nop             
  nop                      #  23    0x4bc32  1      OPC=nop             
  nop                      #  24    0x4bc33  1      OPC=nop             
  nop                      #  25    0x4bc34  1      OPC=nop             
  nop                      #  26    0x4bc35  1      OPC=nop             
  nop                      #  27    0x4bc36  1      OPC=nop             
  nop                      #  28    0x4bc37  1      OPC=nop             
  nop                      #  29    0x4bc38  1      OPC=nop             
  nop                      #  30    0x4bc39  1      OPC=nop             
  nop                      #  31    0x4bc3a  1      OPC=nop             
  callq .__gmpn_lshift     #  32    0x4bc3b  5      OPC=callq_label     
  movl %ebx, %ecx          #  33    0x4bc40  2      OPC=movl_r32_r32    
  movl %eax, %r14d         #  34    0x4bc42  3      OPC=movl_r32_r32    
  movl %r13d, %edx         #  35    0x4bc45  3      OPC=movl_r32_r32    
  movl %r12d, %esi         #  36    0x4bc48  3      OPC=movl_r32_r32    
  movl %r12d, %edi         #  37    0x4bc4b  3      OPC=movl_r32_r32    
  nop                      #  38    0x4bc4e  1      OPC=nop             
  nop                      #  39    0x4bc4f  1      OPC=nop             
  nop                      #  40    0x4bc50  1      OPC=nop             
  nop                      #  41    0x4bc51  1      OPC=nop             
  nop                      #  42    0x4bc52  1      OPC=nop             
  nop                      #  43    0x4bc53  1      OPC=nop             
  nop                      #  44    0x4bc54  1      OPC=nop             
  nop                      #  45    0x4bc55  1      OPC=nop             
  nop                      #  46    0x4bc56  1      OPC=nop             
  nop                      #  47    0x4bc57  1      OPC=nop             
  nop                      #  48    0x4bc58  1      OPC=nop             
  nop                      #  49    0x4bc59  1      OPC=nop             
  nop                      #  50    0x4bc5a  1      OPC=nop             
  callq .__gmpn_add_n      #  51    0x4bc5b  5      OPC=callq_label     
  movq 0x8(%rsp), %rbx     #  52    0x4bc60  5      OPC=movq_r64_m64    
  addl %r14d, %eax         #  53    0x4bc65  3      OPC=addl_r32_r32    
  movq 0x10(%rsp), %r12    #  54    0x4bc68  5      OPC=movq_r64_m64    
  movq 0x18(%rsp), %r13    #  55    0x4bc6d  5      OPC=movq_r64_m64    
  movq 0x20(%rsp), %r14    #  56    0x4bc72  5      OPC=movq_r64_m64    
  addl $0x28, %esp         #  57    0x4bc77  3      OPC=addl_r32_imm8   
  addq %r15, %rsp          #  58    0x4bc7a  3      OPC=addq_r64_r64    
  popq %r11                #  59    0x4bc7d  2      OPC=popq_r64_1      
  nop                      #  60    0x4bc7f  1      OPC=nop             
  andl $0xffffffe0, %r11d  #  61    0x4bc80  7      OPC=andl_r32_imm32  
  nop                      #  62    0x4bc87  1      OPC=nop             
  nop                      #  63    0x4bc88  1      OPC=nop             
  nop                      #  64    0x4bc89  1      OPC=nop             
  nop                      #  65    0x4bc8a  1      OPC=nop             
  addq %r15, %r11          #  66    0x4bc8b  3      OPC=addq_r64_r64    
  jmpq %r11                #  67    0x4bc8e  3      OPC=jmpq_r64        
  nop                      #  68    0x4bc91  1      OPC=nop             
  nop                      #  69    0x4bc92  1      OPC=nop             
  nop                      #  70    0x4bc93  1      OPC=nop             
  nop                      #  71    0x4bc94  1      OPC=nop             
  nop                      #  72    0x4bc95  1      OPC=nop             
  nop                      #  73    0x4bc96  1      OPC=nop             
  nop                      #  74    0x4bc97  1      OPC=nop             
  nop                      #  75    0x4bc98  1      OPC=nop             
  nop                      #  76    0x4bc99  1      OPC=nop             
  nop                      #  77    0x4bc9a  1      OPC=nop             
  nop                      #  78    0x4bc9b  1      OPC=nop             
  nop                      #  79    0x4bc9c  1      OPC=nop             
  nop                      #  80    0x4bc9d  1      OPC=nop             
  nop                      #  81    0x4bc9e  1      OPC=nop             
  nop                      #  82    0x4bc9f  1      OPC=nop             
  nop                      #  83    0x4bca0  1      OPC=nop             
  nop                      #  84    0x4bca1  1      OPC=nop             
  nop                      #  85    0x4bca2  1      OPC=nop             
  nop                      #  86    0x4bca3  1      OPC=nop             
  nop                      #  87    0x4bca4  1      OPC=nop             
  nop                      #  88    0x4bca5  1      OPC=nop             
  nop                      #  89    0x4bca6  1      OPC=nop             
                                                                        
.size DO_mpn_addlsh_n, .-DO_mpn_addlsh_n

