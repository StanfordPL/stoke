  .text
  .globl wmemset
  .type wmemset, @function

#! file-offset 0x183fa0
#! rip-offset  0x143fa0
#! capacity    96 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.wmemset:                  #        0x143fa0  0      OPC=<label>         
  testl %edx, %edx         #  1     0x143fa0  2      OPC=testl_r32_r32   
  movl %edi, %eax          #  2     0x143fa2  2      OPC=movl_r32_r32    
  je .L_143fe0             #  3     0x143fa4  2      OPC=je_label        
  movq %rax, %r8           #  4     0x143fa6  3      OPC=movq_r64_r64    
  xorl %ecx, %ecx          #  5     0x143fa9  2      OPC=xorl_r32_r32    
  nop                      #  6     0x143fab  1      OPC=nop             
  nop                      #  7     0x143fac  1      OPC=nop             
  nop                      #  8     0x143fad  1      OPC=nop             
  nop                      #  9     0x143fae  1      OPC=nop             
  nop                      #  10    0x143faf  1      OPC=nop             
  nop                      #  11    0x143fb0  1      OPC=nop             
  nop                      #  12    0x143fb1  1      OPC=nop             
  nop                      #  13    0x143fb2  1      OPC=nop             
  nop                      #  14    0x143fb3  1      OPC=nop             
  nop                      #  15    0x143fb4  1      OPC=nop             
  nop                      #  16    0x143fb5  1      OPC=nop             
  nop                      #  17    0x143fb6  1      OPC=nop             
  nop                      #  18    0x143fb7  1      OPC=nop             
  nop                      #  19    0x143fb8  1      OPC=nop             
  nop                      #  20    0x143fb9  1      OPC=nop             
  nop                      #  21    0x143fba  1      OPC=nop             
  nop                      #  22    0x143fbb  1      OPC=nop             
  nop                      #  23    0x143fbc  1      OPC=nop             
  nop                      #  24    0x143fbd  1      OPC=nop             
  nop                      #  25    0x143fbe  1      OPC=nop             
  nop                      #  26    0x143fbf  1      OPC=nop             
.L_143fc0:                 #        0x143fc0  0      OPC=<label>         
  addl $0x1, %ecx          #  27    0x143fc0  3      OPC=addl_r32_imm8   
  movl %r8d, %r8d          #  28    0x143fc3  3      OPC=movl_r32_r32    
  movl %esi, (%r15,%r8,1)  #  29    0x143fc6  4      OPC=movl_m32_r32    
  addl $0x4, %r8d          #  30    0x143fca  4      OPC=addl_r32_imm8   
  cmpl %ecx, %edx          #  31    0x143fce  2      OPC=cmpl_r32_r32    
  ja .L_143fc0             #  32    0x143fd0  2      OPC=ja_label        
  nop                      #  33    0x143fd2  1      OPC=nop             
  nop                      #  34    0x143fd3  1      OPC=nop             
  nop                      #  35    0x143fd4  1      OPC=nop             
  nop                      #  36    0x143fd5  1      OPC=nop             
  nop                      #  37    0x143fd6  1      OPC=nop             
  nop                      #  38    0x143fd7  1      OPC=nop             
  nop                      #  39    0x143fd8  1      OPC=nop             
  nop                      #  40    0x143fd9  1      OPC=nop             
  nop                      #  41    0x143fda  1      OPC=nop             
  nop                      #  42    0x143fdb  1      OPC=nop             
  nop                      #  43    0x143fdc  1      OPC=nop             
  nop                      #  44    0x143fdd  1      OPC=nop             
  nop                      #  45    0x143fde  1      OPC=nop             
  nop                      #  46    0x143fdf  1      OPC=nop             
.L_143fe0:                 #        0x143fe0  0      OPC=<label>         
  popq %r11                #  47    0x143fe0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  48    0x143fe2  7      OPC=andl_r32_imm32  
  nop                      #  49    0x143fe9  1      OPC=nop             
  nop                      #  50    0x143fea  1      OPC=nop             
  nop                      #  51    0x143feb  1      OPC=nop             
  nop                      #  52    0x143fec  1      OPC=nop             
  addq %r15, %r11          #  53    0x143fed  3      OPC=addq_r64_r64    
  jmpq %r11                #  54    0x143ff0  3      OPC=jmpq_r64        
  nop                      #  55    0x143ff3  1      OPC=nop             
  nop                      #  56    0x143ff4  1      OPC=nop             
  nop                      #  57    0x143ff5  1      OPC=nop             
  nop                      #  58    0x143ff6  1      OPC=nop             
  nop                      #  59    0x143ff7  1      OPC=nop             
  nop                      #  60    0x143ff8  1      OPC=nop             
  nop                      #  61    0x143ff9  1      OPC=nop             
  nop                      #  62    0x143ffa  1      OPC=nop             
  nop                      #  63    0x143ffb  1      OPC=nop             
  nop                      #  64    0x143ffc  1      OPC=nop             
  nop                      #  65    0x143ffd  1      OPC=nop             
  nop                      #  66    0x143ffe  1      OPC=nop             
  nop                      #  67    0x143fff  1      OPC=nop             
  nop                      #  68    0x144000  1      OPC=nop             
  nop                      #  69    0x144001  1      OPC=nop             
  nop                      #  70    0x144002  1      OPC=nop             
  nop                      #  71    0x144003  1      OPC=nop             
  nop                      #  72    0x144004  1      OPC=nop             
  nop                      #  73    0x144005  1      OPC=nop             
  nop                      #  74    0x144006  1      OPC=nop             
                                                                         
.size wmemset, .-wmemset

