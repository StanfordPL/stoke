  .text
  .globl idlefn
  .type idlefn, @function

#! file-offset 0x655a0
#! rip-offset  0x255a0
#! capacity    160 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.idlefn:                       #        0x255a0  0      OPC=<label>         
  movl 0x10053c0a(%rip), %eax  #  1     0x255a0  6      OPC=movl_r32_m32    
  subl $0x1, %eax              #  2     0x255a6  3      OPC=subl_r32_imm8   
  movl %eax, 0x10053c01(%rip)  #  3     0x255a9  6      OPC=movl_m32_r32    
  testl %eax, %eax             #  4     0x255af  2      OPC=testl_r32_r32   
  je .L_25600                  #  5     0x255b1  2      OPC=je_label        
  movl 0x10053bf3(%rip), %eax  #  6     0x255b3  6      OPC=movl_r32_m32    
  testb $0x1, %al              #  7     0x255b9  2      OPC=testb_al_imm8   
  nop                          #  8     0x255bb  1      OPC=nop             
  nop                          #  9     0x255bc  1      OPC=nop             
  nop                          #  10    0x255bd  1      OPC=nop             
  nop                          #  11    0x255be  1      OPC=nop             
  nop                          #  12    0x255bf  1      OPC=nop             
  je .L_255e0                  #  13    0x255c0  2      OPC=je_label        
  sarl $0x1, %eax              #  14    0x255c2  2      OPC=sarl_r32_one    
  andl $0x7fff, %eax           #  15    0x255c4  5      OPC=andl_eax_imm32  
  xorl $0xd008, %eax           #  16    0x255c9  5      OPC=xorl_eax_imm32  
  movl %eax, 0x10053bd8(%rip)  #  17    0x255ce  6      OPC=movl_m32_r32    
  movl $0x6, %edi              #  18    0x255d4  5      OPC=movl_r32_imm32  
  jmpq .release                #  19    0x255d9  5      OPC=jmpq_label_1    
  xchgw %ax, %ax               #  20    0x255de  2      OPC=xchgw_ax_r16    
.L_255e0:                      #        0x255e0  0      OPC=<label>         
  sarl $0x1, %eax              #  21    0x255e0  2      OPC=sarl_r32_one    
  andl $0x7fff, %eax           #  22    0x255e2  5      OPC=andl_eax_imm32  
  movl %eax, 0x10053bbf(%rip)  #  23    0x255e7  6      OPC=movl_m32_r32    
  movl $0x5, %edi              #  24    0x255ed  5      OPC=movl_r32_imm32  
  jmpq .release                #  25    0x255f2  5      OPC=jmpq_label_1    
  nop                          #  26    0x255f7  1      OPC=nop             
  nop                          #  27    0x255f8  1      OPC=nop             
  nop                          #  28    0x255f9  1      OPC=nop             
  nop                          #  29    0x255fa  1      OPC=nop             
  nop                          #  30    0x255fb  1      OPC=nop             
  nop                          #  31    0x255fc  1      OPC=nop             
  nop                          #  32    0x255fd  1      OPC=nop             
  nop                          #  33    0x255fe  1      OPC=nop             
  nop                          #  34    0x255ff  1      OPC=nop             
.L_25600:                      #        0x25600  0      OPC=<label>         
  addl $0x1, 0x1004bb2d(%rip)  #  35    0x25600  7      OPC=addl_m32_imm8   
  movl 0x10053b9b(%rip), %eax  #  36    0x25607  6      OPC=movl_r32_m32    
  movl %eax, %eax              #  37    0x2560d  2      OPC=movl_r32_r32    
  orl $0x4, 0x10(%r15,%rax,1)  #  38    0x2560f  6      OPC=orl_m32_imm8    
  movl %eax, %eax              #  39    0x25615  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax     #  40    0x25617  4      OPC=movl_r32_m32    
  popq %r11                    #  41    0x2561b  2      OPC=popq_r64_1      
  nop                          #  42    0x2561d  1      OPC=nop             
  nop                          #  43    0x2561e  1      OPC=nop             
  nop                          #  44    0x2561f  1      OPC=nop             
  andl $0xffffffe0, %r11d      #  45    0x25620  7      OPC=andl_r32_imm32  
  nop                          #  46    0x25627  1      OPC=nop             
  nop                          #  47    0x25628  1      OPC=nop             
  nop                          #  48    0x25629  1      OPC=nop             
  nop                          #  49    0x2562a  1      OPC=nop             
  addq %r15, %r11              #  50    0x2562b  3      OPC=addq_r64_r64    
  jmpq %r11                    #  51    0x2562e  3      OPC=jmpq_r64        
  nop                          #  52    0x25631  1      OPC=nop             
  nop                          #  53    0x25632  1      OPC=nop             
  nop                          #  54    0x25633  1      OPC=nop             
  nop                          #  55    0x25634  1      OPC=nop             
  nop                          #  56    0x25635  1      OPC=nop             
  nop                          #  57    0x25636  1      OPC=nop             
  nop                          #  58    0x25637  1      OPC=nop             
  nop                          #  59    0x25638  1      OPC=nop             
  nop                          #  60    0x25639  1      OPC=nop             
  nop                          #  61    0x2563a  1      OPC=nop             
  nop                          #  62    0x2563b  1      OPC=nop             
  nop                          #  63    0x2563c  1      OPC=nop             
  nop                          #  64    0x2563d  1      OPC=nop             
  nop                          #  65    0x2563e  1      OPC=nop             
  nop                          #  66    0x2563f  1      OPC=nop             
  nop                          #  67    0x25640  1      OPC=nop             
  nop                          #  68    0x25641  1      OPC=nop             
  nop                          #  69    0x25642  1      OPC=nop             
  nop                          #  70    0x25643  1      OPC=nop             
  nop                          #  71    0x25644  1      OPC=nop             
  nop                          #  72    0x25645  1      OPC=nop             
  nop                          #  73    0x25646  1      OPC=nop             
                                                                            
.size idlefn, .-idlefn

