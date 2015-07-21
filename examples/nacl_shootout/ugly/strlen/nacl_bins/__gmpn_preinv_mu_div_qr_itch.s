  .text
  .globl __gmpn_preinv_mu_div_qr_itch
  .type __gmpn_preinv_mu_div_qr_itch, @function

#! file-offset 0x75f60
#! rip-offset  0x35f60
#! capacity    128 bytes

# Text                                 #  Line  RIP      Bytes  Opcode    
.__gmpn_preinv_mu_div_qr_itch:         #        0x35f60  0      OPC=0     
  movq %rbx, -0x10(%rsp)               #  1     0x35f60  5      OPC=1138  
  movl %esi, %ebx                      #  2     0x35f65  2      OPC=1157  
  movq %r12, -0x8(%rsp)                #  3     0x35f67  5      OPC=1138  
  leal 0x1(%rbx), %edi                 #  4     0x35f6c  3      OPC=1066  
  subl $0x18, %esp                     #  5     0x35f6f  3      OPC=2384  
  addq %r15, %rsp                      #  6     0x35f72  3      OPC=72    
  movl %edx, %r12d                     #  7     0x35f75  3      OPC=1157  
  nop                                  #  8     0x35f78  1      OPC=1343  
  nop                                  #  9     0x35f79  1      OPC=1343  
  nop                                  #  10    0x35f7a  1      OPC=1343  
  callq .__gmpn_mulmod_bnm1_next_size  #  11    0x35f7b  5      OPC=260   
  movl %eax, %edx                      #  12    0x35f80  2      OPC=1157  
  sarl $0x1, %edx                      #  13    0x35f82  2      OPC=2097  
  cmpl %edx, %ebx                      #  14    0x35f84  2      OPC=472   
  jle .L_35fc0                         #  15    0x35f86  6      OPC=919   
  nop                                  #  16    0x35f8c  1      OPC=1343  
  nop                                  #  17    0x35f8d  1      OPC=1343  
  cmpl %edx, %r12d                     #  18    0x35f8e  3      OPC=472   
  cmovgl %eax, %edx                    #  19    0x35f91  3      OPC=308   
  nop                                  #  20    0x35f94  1      OPC=1343  
  nop                                  #  21    0x35f95  1      OPC=1343  
  nop                                  #  22    0x35f96  1      OPC=1343  
  nop                                  #  23    0x35f97  1      OPC=1343  
  nop                                  #  24    0x35f98  1      OPC=1343  
  nop                                  #  25    0x35f99  1      OPC=1343  
  nop                                  #  26    0x35f9a  1      OPC=1343  
  nop                                  #  27    0x35f9b  1      OPC=1343  
  nop                                  #  28    0x35f9c  1      OPC=1343  
  nop                                  #  29    0x35f9d  1      OPC=1343  
  nop                                  #  30    0x35f9e  1      OPC=1343  
  nop                                  #  31    0x35f9f  1      OPC=1343  
  nop                                  #  32    0x35fa0  1      OPC=1343  
  nop                                  #  33    0x35fa1  1      OPC=1343  
  nop                                  #  34    0x35fa2  1      OPC=1343  
  nop                                  #  35    0x35fa3  1      OPC=1343  
  nop                                  #  36    0x35fa4  1      OPC=1343  
  nop                                  #  37    0x35fa5  1      OPC=1343  
.L_35fa0:                              #        0x35fa6  0      OPC=0     
  movq 0x8(%rsp), %rbx                 #  38    0x35fa6  5      OPC=1161  
  movq 0x10(%rsp), %r12                #  39    0x35fab  5      OPC=1161  
  addl $0x18, %esp                     #  40    0x35fb0  3      OPC=65    
  addq %r15, %rsp                      #  41    0x35fb3  3      OPC=72    
  popq %r11                            #  42    0x35fb6  2      OPC=1694  
  leal 0x4(%rdx,%rax,2), %eax          #  43    0x35fb8  4      OPC=1066  
  andl $0xffffffe0, %r11d              #  44    0x35fbc  7      OPC=131   
  nop                                  #  45    0x35fc3  1      OPC=1343  
  nop                                  #  46    0x35fc4  1      OPC=1343  
  nop                                  #  47    0x35fc5  1      OPC=1343  
  nop                                  #  48    0x35fc6  1      OPC=1343  
  addq %r15, %r11                      #  49    0x35fc7  3      OPC=72    
  jmpq %r11                            #  50    0x35fca  3      OPC=928   
.L_35fc0:                              #        0x35fcd  0      OPC=0     
  xorl %edx, %edx                      #  51    0x35fcd  2      OPC=3758  
  jmpq .L_35fa0                        #  52    0x35fcf  5      OPC=930   
  nop                                  #  53    0x35fd4  1      OPC=1343  
  nop                                  #  54    0x35fd5  1      OPC=1343  
  nop                                  #  55    0x35fd6  1      OPC=1343  
  nop                                  #  56    0x35fd7  1      OPC=1343  
  nop                                  #  57    0x35fd8  1      OPC=1343  
  nop                                  #  58    0x35fd9  1      OPC=1343  
  nop                                  #  59    0x35fda  1      OPC=1343  
  nop                                  #  60    0x35fdb  1      OPC=1343  
  nop                                  #  61    0x35fdc  1      OPC=1343  
  nop                                  #  62    0x35fdd  1      OPC=1343  
  nop                                  #  63    0x35fde  1      OPC=1343  
  nop                                  #  64    0x35fdf  1      OPC=1343  
  nop                                  #  65    0x35fe0  1      OPC=1343  
  nop                                  #  66    0x35fe1  1      OPC=1343  
  nop                                  #  67    0x35fe2  1      OPC=1343  
  nop                                  #  68    0x35fe3  1      OPC=1343  
  nop                                  #  69    0x35fe4  1      OPC=1343  
  nop                                  #  70    0x35fe5  1      OPC=1343  
  nop                                  #  71    0x35fe6  1      OPC=1343  
  nop                                  #  72    0x35fe7  1      OPC=1343  
  nop                                  #  73    0x35fe8  1      OPC=1343  
  nop                                  #  74    0x35fe9  1      OPC=1343  
  nop                                  #  75    0x35fea  1      OPC=1343  
  nop                                  #  76    0x35feb  1      OPC=1343  
  nop                                  #  77    0x35fec  1      OPC=1343  
  nop                                  #  78    0x35fed  1      OPC=1343  
  nop                                  #  79    0x35fee  1      OPC=1343  
  nop                                  #  80    0x35fef  1      OPC=1343  
  nop                                  #  81    0x35ff0  1      OPC=1343  
  nop                                  #  82    0x35ff1  1      OPC=1343  
                                                                          
.size __gmpn_preinv_mu_div_qr_itch, .-__gmpn_preinv_mu_div_qr_itch

