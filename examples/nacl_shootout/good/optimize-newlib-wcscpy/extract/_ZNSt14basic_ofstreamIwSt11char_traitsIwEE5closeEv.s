  .text
  .globl _ZNSt14basic_ofstreamIwSt11char_traitsIwEE5closeEv
  .type _ZNSt14basic_ofstreamIwSt11char_traitsIwEE5closeEv, @function

#! file-offset 0x132cc0
#! rip-offset  0xf2cc0
#! capacity    128 bytes

# Text                                                               #  Line  RIP      Bytes  Opcode              
._ZNSt14basic_ofstreamIwSt11char_traitsIwEE5closeEv:                 #        0xf2cc0  0      OPC=<label>         
  pushq %rbx                                                         #  1     0xf2cc0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                    #  2     0xf2cc1  2      OPC=movl_r32_r32    
  leal 0x4(%rbx), %edi                                               #  3     0xf2cc3  3      OPC=leal_r32_m16    
  nop                                                                #  4     0xf2cc6  1      OPC=nop             
  nop                                                                #  5     0xf2cc7  1      OPC=nop             
  nop                                                                #  6     0xf2cc8  1      OPC=nop             
  nop                                                                #  7     0xf2cc9  1      OPC=nop             
  nop                                                                #  8     0xf2cca  1      OPC=nop             
  nop                                                                #  9     0xf2ccb  1      OPC=nop             
  nop                                                                #  10    0xf2ccc  1      OPC=nop             
  nop                                                                #  11    0xf2ccd  1      OPC=nop             
  nop                                                                #  12    0xf2cce  1      OPC=nop             
  nop                                                                #  13    0xf2ccf  1      OPC=nop             
  nop                                                                #  14    0xf2cd0  1      OPC=nop             
  nop                                                                #  15    0xf2cd1  1      OPC=nop             
  nop                                                                #  16    0xf2cd2  1      OPC=nop             
  nop                                                                #  17    0xf2cd3  1      OPC=nop             
  nop                                                                #  18    0xf2cd4  1      OPC=nop             
  nop                                                                #  19    0xf2cd5  1      OPC=nop             
  nop                                                                #  20    0xf2cd6  1      OPC=nop             
  nop                                                                #  21    0xf2cd7  1      OPC=nop             
  nop                                                                #  22    0xf2cd8  1      OPC=nop             
  nop                                                                #  23    0xf2cd9  1      OPC=nop             
  nop                                                                #  24    0xf2cda  1      OPC=nop             
  callq ._ZNSt13basic_filebufIwSt11char_traitsIwEE5closeEv           #  25    0xf2cdb  5      OPC=callq_label     
  testl %eax, %eax                                                   #  26    0xf2ce0  2      OPC=testl_r32_r32   
  je .L_f2d00                                                        #  27    0xf2ce2  2      OPC=je_label        
  popq %rbx                                                          #  28    0xf2ce4  1      OPC=popq_r64_1      
  popq %r11                                                          #  29    0xf2ce5  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                            #  30    0xf2ce7  7      OPC=andl_r32_imm32  
  nop                                                                #  31    0xf2cee  1      OPC=nop             
  nop                                                                #  32    0xf2cef  1      OPC=nop             
  nop                                                                #  33    0xf2cf0  1      OPC=nop             
  nop                                                                #  34    0xf2cf1  1      OPC=nop             
  addq %r15, %r11                                                    #  35    0xf2cf2  3      OPC=addq_r64_r64    
  jmpq %r11                                                          #  36    0xf2cf5  3      OPC=jmpq_r64        
  nop                                                                #  37    0xf2cf8  1      OPC=nop             
  nop                                                                #  38    0xf2cf9  1      OPC=nop             
  nop                                                                #  39    0xf2cfa  1      OPC=nop             
  nop                                                                #  40    0xf2cfb  1      OPC=nop             
  nop                                                                #  41    0xf2cfc  1      OPC=nop             
  nop                                                                #  42    0xf2cfd  1      OPC=nop             
  nop                                                                #  43    0xf2cfe  1      OPC=nop             
  nop                                                                #  44    0xf2cff  1      OPC=nop             
  nop                                                                #  45    0xf2d00  1      OPC=nop             
  nop                                                                #  46    0xf2d01  1      OPC=nop             
  nop                                                                #  47    0xf2d02  1      OPC=nop             
  nop                                                                #  48    0xf2d03  1      OPC=nop             
  nop                                                                #  49    0xf2d04  1      OPC=nop             
  nop                                                                #  50    0xf2d05  1      OPC=nop             
  nop                                                                #  51    0xf2d06  1      OPC=nop             
.L_f2d00:                                                            #        0xf2d07  0      OPC=<label>         
  movl %ebx, %ebx                                                    #  52    0xf2d07  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                           #  53    0xf2d09  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                    #  54    0xf2d0d  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                    #  55    0xf2d10  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi                                           #  56    0xf2d12  4      OPC=movl_r32_m32    
  addl %ebx, %edi                                                    #  57    0xf2d16  2      OPC=addl_r32_r32    
  movl %edi, %edi                                                    #  58    0xf2d18  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %esi                                       #  59    0xf2d1a  5      OPC=movl_r32_m32    
  popq %rbx                                                          #  60    0xf2d1f  1      OPC=popq_r64_1      
  orl $0x4, %esi                                                     #  61    0xf2d20  3      OPC=orl_r32_imm8    
  nop                                                                #  62    0xf2d23  1      OPC=nop             
  nop                                                                #  63    0xf2d24  1      OPC=nop             
  nop                                                                #  64    0xf2d25  1      OPC=nop             
  nop                                                                #  65    0xf2d26  1      OPC=nop             
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate  #  66    0xf2d27  5      OPC=jmpq_label_1    
  nop                                                                #  67    0xf2d2c  1      OPC=nop             
  nop                                                                #  68    0xf2d2d  1      OPC=nop             
  nop                                                                #  69    0xf2d2e  1      OPC=nop             
  nop                                                                #  70    0xf2d2f  1      OPC=nop             
  nop                                                                #  71    0xf2d30  1      OPC=nop             
  nop                                                                #  72    0xf2d31  1      OPC=nop             
  nop                                                                #  73    0xf2d32  1      OPC=nop             
  nop                                                                #  74    0xf2d33  1      OPC=nop             
  nop                                                                #  75    0xf2d34  1      OPC=nop             
  nop                                                                #  76    0xf2d35  1      OPC=nop             
  nop                                                                #  77    0xf2d36  1      OPC=nop             
  nop                                                                #  78    0xf2d37  1      OPC=nop             
  nop                                                                #  79    0xf2d38  1      OPC=nop             
  nop                                                                #  80    0xf2d39  1      OPC=nop             
  nop                                                                #  81    0xf2d3a  1      OPC=nop             
  nop                                                                #  82    0xf2d3b  1      OPC=nop             
  nop                                                                #  83    0xf2d3c  1      OPC=nop             
  nop                                                                #  84    0xf2d3d  1      OPC=nop             
  nop                                                                #  85    0xf2d3e  1      OPC=nop             
  nop                                                                #  86    0xf2d3f  1      OPC=nop             
  nop                                                                #  87    0xf2d40  1      OPC=nop             
  nop                                                                #  88    0xf2d41  1      OPC=nop             
  nop                                                                #  89    0xf2d42  1      OPC=nop             
  nop                                                                #  90    0xf2d43  1      OPC=nop             
  nop                                                                #  91    0xf2d44  1      OPC=nop             
  nop                                                                #  92    0xf2d45  1      OPC=nop             
  nop                                                                #  93    0xf2d46  1      OPC=nop             
                                                                                                                  
.size _ZNSt14basic_ofstreamIwSt11char_traitsIwEE5closeEv, .-_ZNSt14basic_ofstreamIwSt11char_traitsIwEE5closeEv

