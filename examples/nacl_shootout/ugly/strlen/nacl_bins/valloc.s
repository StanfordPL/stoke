  .text
  .globl valloc
  .type valloc, @function

#! file-offset 0x157500
#! rip-offset  0x117500
#! capacity    64 bytes

# Text                        #  Line  RIP       Bytes  Opcode    
.valloc:                      #        0x117500  0      OPC=0     
  movl 0xff6164a(%rip), %ecx  #  1     0x117500  6      OPC=1156  
  pushq %rbx                  #  2     0x117506  1      OPC=1861  
  movl %edi, %ebx             #  3     0x117507  2      OPC=1157  
  testl %ecx, %ecx            #  4     0x117509  2      OPC=2436  
  jne .L_117520               #  5     0x11750b  6      OPC=963   
  nop                         #  6     0x117511  1      OPC=1343  
  nop                         #  7     0x117512  1      OPC=1343  
  nop                         #  8     0x117513  1      OPC=1343  
  nop                         #  9     0x117514  1      OPC=1343  
  nop                         #  10    0x117515  1      OPC=1343  
  nop                         #  11    0x117516  1      OPC=1343  
  nop                         #  12    0x117517  1      OPC=1343  
  nop                         #  13    0x117518  1      OPC=1343  
  nop                         #  14    0x117519  1      OPC=1343  
  nop                         #  15    0x11751a  1      OPC=1343  
  nop                         #  16    0x11751b  1      OPC=1343  
  nop                         #  17    0x11751c  1      OPC=1343  
  nop                         #  18    0x11751d  1      OPC=1343  
  nop                         #  19    0x11751e  1      OPC=1343  
  nop                         #  20    0x11751f  1      OPC=1343  
  nop                         #  21    0x117520  1      OPC=1343  
  callq .init_mparams         #  22    0x117521  5      OPC=260   
.L_117520:                    #        0x117526  0      OPC=0     
  movl %ebx, %esi             #  23    0x117526  2      OPC=1157  
  movl 0xff6162c(%rip), %edi  #  24    0x117528  6      OPC=1156  
  popq %rbx                   #  25    0x11752e  1      OPC=1694  
  jmpq .memalign              #  26    0x11752f  5      OPC=930   
  nop                         #  27    0x117534  1      OPC=1343  
  nop                         #  28    0x117535  1      OPC=1343  
  nop                         #  29    0x117536  1      OPC=1343  
  nop                         #  30    0x117537  1      OPC=1343  
  nop                         #  31    0x117538  1      OPC=1343  
  nop                         #  32    0x117539  1      OPC=1343  
  nop                         #  33    0x11753a  1      OPC=1343  
  nop                         #  34    0x11753b  1      OPC=1343  
  nop                         #  35    0x11753c  1      OPC=1343  
  nop                         #  36    0x11753d  1      OPC=1343  
  nop                         #  37    0x11753e  1      OPC=1343  
  nop                         #  38    0x11753f  1      OPC=1343  
  nop                         #  39    0x117540  1      OPC=1343  
  nop                         #  40    0x117541  1      OPC=1343  
  nop                         #  41    0x117542  1      OPC=1343  
  nop                         #  42    0x117543  1      OPC=1343  
  nop                         #  43    0x117544  1      OPC=1343  
  nop                         #  44    0x117545  1      OPC=1343  
                                                                  
.size valloc, .-valloc

