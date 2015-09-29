  .text
  .globl wcslen
  .type wcslen, @function

#! file-offset 0x1838a0
#! rip-offset  0x1438a0
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wcslen:                    #        0x1438a0  0      OPC=<label>         
  movl %edi, %edi           #  1     0x1438a0  2      OPC=movl_r32_r32    
  xorl %eax, %eax           #  2     0x1438a2  2      OPC=xorl_r32_r32    
  movl %edi, %edi           #  3     0x1438a4  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %ecx  #  4     0x1438a6  4      OPC=movl_r32_m32    
  movq %rdi, %rdx           #  5     0x1438aa  3      OPC=movq_r64_r64    
  testl %ecx, %ecx          #  6     0x1438ad  2      OPC=testl_r32_r32   
  je .L_1438e0              #  7     0x1438af  2      OPC=je_label        
  nop                       #  8     0x1438b1  1      OPC=nop             
  nop                       #  9     0x1438b2  1      OPC=nop             
  nop                       #  10    0x1438b3  1      OPC=nop             
  nop                       #  11    0x1438b4  1      OPC=nop             
  nop                       #  12    0x1438b5  1      OPC=nop             
  nop                       #  13    0x1438b6  1      OPC=nop             
  nop                       #  14    0x1438b7  1      OPC=nop             
  nop                       #  15    0x1438b8  1      OPC=nop             
  nop                       #  16    0x1438b9  1      OPC=nop             
  nop                       #  17    0x1438ba  1      OPC=nop             
  nop                       #  18    0x1438bb  1      OPC=nop             
  nop                       #  19    0x1438bc  1      OPC=nop             
  nop                       #  20    0x1438bd  1      OPC=nop             
  nop                       #  21    0x1438be  1      OPC=nop             
  nop                       #  22    0x1438bf  1      OPC=nop             
.L_1438c0:                  #        0x1438c0  0      OPC=<label>         
  addl $0x4, %edx           #  23    0x1438c0  3      OPC=addl_r32_imm8   
  movl %edx, %edx           #  24    0x1438c3  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %eax  #  25    0x1438c5  4      OPC=movl_r32_m32    
  testl %eax, %eax          #  26    0x1438c9  2      OPC=testl_r32_r32   
  jne .L_1438c0             #  27    0x1438cb  2      OPC=jne_label       
  movl %edx, %eax           #  28    0x1438cd  2      OPC=movl_r32_r32    
  subl %edi, %eax           #  29    0x1438cf  2      OPC=subl_r32_r32    
  sarl $0x2, %eax           #  30    0x1438d1  3      OPC=sarl_r32_imm8   
  nop                       #  31    0x1438d4  1      OPC=nop             
  nop                       #  32    0x1438d5  1      OPC=nop             
  nop                       #  33    0x1438d6  1      OPC=nop             
  nop                       #  34    0x1438d7  1      OPC=nop             
  nop                       #  35    0x1438d8  1      OPC=nop             
  nop                       #  36    0x1438d9  1      OPC=nop             
  nop                       #  37    0x1438da  1      OPC=nop             
  nop                       #  38    0x1438db  1      OPC=nop             
  nop                       #  39    0x1438dc  1      OPC=nop             
  nop                       #  40    0x1438dd  1      OPC=nop             
  nop                       #  41    0x1438de  1      OPC=nop             
  nop                       #  42    0x1438df  1      OPC=nop             
.L_1438e0:                  #        0x1438e0  0      OPC=<label>         
  popq %r11                 #  43    0x1438e0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d   #  44    0x1438e2  7      OPC=andl_r32_imm32  
  nop                       #  45    0x1438e9  1      OPC=nop             
  nop                       #  46    0x1438ea  1      OPC=nop             
  nop                       #  47    0x1438eb  1      OPC=nop             
  nop                       #  48    0x1438ec  1      OPC=nop             
  addq %r15, %r11           #  49    0x1438ed  3      OPC=addq_r64_r64    
  jmpq %r11                 #  50    0x1438f0  3      OPC=jmpq_r64        
  nop                       #  51    0x1438f3  1      OPC=nop             
  nop                       #  52    0x1438f4  1      OPC=nop             
  nop                       #  53    0x1438f5  1      OPC=nop             
  nop                       #  54    0x1438f6  1      OPC=nop             
  nop                       #  55    0x1438f7  1      OPC=nop             
  nop                       #  56    0x1438f8  1      OPC=nop             
  nop                       #  57    0x1438f9  1      OPC=nop             
  nop                       #  58    0x1438fa  1      OPC=nop             
  nop                       #  59    0x1438fb  1      OPC=nop             
  nop                       #  60    0x1438fc  1      OPC=nop             
  nop                       #  61    0x1438fd  1      OPC=nop             
  nop                       #  62    0x1438fe  1      OPC=nop             
  nop                       #  63    0x1438ff  1      OPC=nop             
  nop                       #  64    0x143900  1      OPC=nop             
  nop                       #  65    0x143901  1      OPC=nop             
  nop                       #  66    0x143902  1      OPC=nop             
  nop                       #  67    0x143903  1      OPC=nop             
  nop                       #  68    0x143904  1      OPC=nop             
  nop                       #  69    0x143905  1      OPC=nop             
  nop                       #  70    0x143906  1      OPC=nop             
                                                                          
.size wcslen, .-wcslen

