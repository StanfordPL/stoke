  .text
  .globl exit
  .type exit, @function

#! file-offset 0x159500
#! rip-offset  0x119500
#! capacity    96 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
.exit:                          #        0x119500  0      OPC=<label>         
  pushq %rbx                    #  1     0x119500  1      OPC=pushq_r64_1     
  xorl %esi, %esi               #  2     0x119501  2      OPC=xorl_r32_r32    
  movl %edi, %ebx               #  3     0x119503  2      OPC=movl_r32_r32    
  nop                           #  4     0x119505  1      OPC=nop             
  nop                           #  5     0x119506  1      OPC=nop             
  nop                           #  6     0x119507  1      OPC=nop             
  nop                           #  7     0x119508  1      OPC=nop             
  nop                           #  8     0x119509  1      OPC=nop             
  nop                           #  9     0x11950a  1      OPC=nop             
  nop                           #  10    0x11950b  1      OPC=nop             
  nop                           #  11    0x11950c  1      OPC=nop             
  nop                           #  12    0x11950d  1      OPC=nop             
  nop                           #  13    0x11950e  1      OPC=nop             
  nop                           #  14    0x11950f  1      OPC=nop             
  nop                           #  15    0x119510  1      OPC=nop             
  nop                           #  16    0x119511  1      OPC=nop             
  nop                           #  17    0x119512  1      OPC=nop             
  nop                           #  18    0x119513  1      OPC=nop             
  nop                           #  19    0x119514  1      OPC=nop             
  nop                           #  20    0x119515  1      OPC=nop             
  nop                           #  21    0x119516  1      OPC=nop             
  nop                           #  22    0x119517  1      OPC=nop             
  nop                           #  23    0x119518  1      OPC=nop             
  nop                           #  24    0x119519  1      OPC=nop             
  nop                           #  25    0x11951a  1      OPC=nop             
  callq .__call_exitprocs       #  26    0x11951b  5      OPC=callq_label     
  movl 0xff278ba(%rip), %edi    #  27    0x119520  6      OPC=movl_r32_m32    
  movl %edi, %edi               #  28    0x119526  2      OPC=movl_r32_r32    
  movl 0x3c(%r15,%rdi,1), %eax  #  29    0x119528  5      OPC=movl_r32_m32    
  testq %rax, %rax              #  30    0x11952d  3      OPC=testq_r64_r64   
  je .L_119540                  #  31    0x119530  2      OPC=je_label        
  nop                           #  32    0x119532  1      OPC=nop             
  nop                           #  33    0x119533  1      OPC=nop             
  nop                           #  34    0x119534  1      OPC=nop             
  nop                           #  35    0x119535  1      OPC=nop             
  nop                           #  36    0x119536  1      OPC=nop             
  nop                           #  37    0x119537  1      OPC=nop             
  andl $0xffffffe0, %eax        #  38    0x119538  6      OPC=andl_r32_imm32  
  nop                           #  39    0x11953e  1      OPC=nop             
  nop                           #  40    0x11953f  1      OPC=nop             
  nop                           #  41    0x119540  1      OPC=nop             
  addq %r15, %rax               #  42    0x119541  3      OPC=addq_r64_r64    
  callq %rax                    #  43    0x119544  2      OPC=callq_r64       
.L_119540:                      #        0x119546  0      OPC=<label>         
  movl %ebx, %edi               #  44    0x119546  2      OPC=movl_r32_r32    
  nop                           #  45    0x119548  1      OPC=nop             
  nop                           #  46    0x119549  1      OPC=nop             
  nop                           #  47    0x11954a  1      OPC=nop             
  nop                           #  48    0x11954b  1      OPC=nop             
  nop                           #  49    0x11954c  1      OPC=nop             
  nop                           #  50    0x11954d  1      OPC=nop             
  nop                           #  51    0x11954e  1      OPC=nop             
  nop                           #  52    0x11954f  1      OPC=nop             
  nop                           #  53    0x119550  1      OPC=nop             
  nop                           #  54    0x119551  1      OPC=nop             
  nop                           #  55    0x119552  1      OPC=nop             
  nop                           #  56    0x119553  1      OPC=nop             
  nop                           #  57    0x119554  1      OPC=nop             
  nop                           #  58    0x119555  1      OPC=nop             
  nop                           #  59    0x119556  1      OPC=nop             
  nop                           #  60    0x119557  1      OPC=nop             
  nop                           #  61    0x119558  1      OPC=nop             
  nop                           #  62    0x119559  1      OPC=nop             
  nop                           #  63    0x11955a  1      OPC=nop             
  nop                           #  64    0x11955b  1      OPC=nop             
  nop                           #  65    0x11955c  1      OPC=nop             
  nop                           #  66    0x11955d  1      OPC=nop             
  nop                           #  67    0x11955e  1      OPC=nop             
  nop                           #  68    0x11955f  1      OPC=nop             
  nop                           #  69    0x119560  1      OPC=nop             
  callq ._exit                  #  70    0x119561  5      OPC=callq_label     
                                                                              
.size exit, .-exit

