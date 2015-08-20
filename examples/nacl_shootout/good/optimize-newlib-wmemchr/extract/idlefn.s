  .text
  .globl idlefn
  .type idlefn, @function

#! file-offset 0x655c0
#! rip-offset  0x255c0
#! capacity    160 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.idlefn:                       #        0x255c0  0      OPC=<label>         
  movl 0x10053bea(%rip), %eax  #  1     0x255c0  6      OPC=movl_r32_m32    
  subl $0x1, %eax              #  2     0x255c6  3      OPC=subl_r32_imm8   
  movl %eax, 0x10053be1(%rip)  #  3     0x255c9  6      OPC=movl_m32_r32    
  testl %eax, %eax             #  4     0x255cf  2      OPC=testl_r32_r32   
  je .L_25620                  #  5     0x255d1  2      OPC=je_label        
  movl 0x10053bd3(%rip), %eax  #  6     0x255d3  6      OPC=movl_r32_m32    
  testb $0x1, %al              #  7     0x255d9  2      OPC=testb_al_imm8   
  nop                          #  8     0x255db  1      OPC=nop             
  nop                          #  9     0x255dc  1      OPC=nop             
  nop                          #  10    0x255dd  1      OPC=nop             
  nop                          #  11    0x255de  1      OPC=nop             
  nop                          #  12    0x255df  1      OPC=nop             
  je .L_25600                  #  13    0x255e0  2      OPC=je_label        
  sarl $0x1, %eax              #  14    0x255e2  2      OPC=sarl_r32_one    
  andl $0x7fff, %eax           #  15    0x255e4  5      OPC=andl_eax_imm32  
  xorl $0xd008, %eax           #  16    0x255e9  5      OPC=xorl_eax_imm32  
  movl %eax, 0x10053bb8(%rip)  #  17    0x255ee  6      OPC=movl_m32_r32    
  movl $0x6, %edi              #  18    0x255f4  5      OPC=movl_r32_imm32  
  jmpq .release                #  19    0x255f9  5      OPC=jmpq_label_1    
  xchgw %ax, %ax               #  20    0x255fe  2      OPC=xchgw_ax_r16    
.L_25600:                      #        0x25600  0      OPC=<label>         
  sarl $0x1, %eax              #  21    0x25600  2      OPC=sarl_r32_one    
  andl $0x7fff, %eax           #  22    0x25602  5      OPC=andl_eax_imm32  
  movl %eax, 0x10053b9f(%rip)  #  23    0x25607  6      OPC=movl_m32_r32    
  movl $0x5, %edi              #  24    0x2560d  5      OPC=movl_r32_imm32  
  jmpq .release                #  25    0x25612  5      OPC=jmpq_label_1    
  nop                          #  26    0x25617  1      OPC=nop             
  nop                          #  27    0x25618  1      OPC=nop             
  nop                          #  28    0x25619  1      OPC=nop             
  nop                          #  29    0x2561a  1      OPC=nop             
  nop                          #  30    0x2561b  1      OPC=nop             
  nop                          #  31    0x2561c  1      OPC=nop             
  nop                          #  32    0x2561d  1      OPC=nop             
  nop                          #  33    0x2561e  1      OPC=nop             
  nop                          #  34    0x2561f  1      OPC=nop             
.L_25620:                      #        0x25620  0      OPC=<label>         
  addl $0x1, 0x1004bb0d(%rip)  #  35    0x25620  7      OPC=addl_m32_imm8   
  movl 0x10053b7b(%rip), %eax  #  36    0x25627  6      OPC=movl_r32_m32    
  movl %eax, %eax              #  37    0x2562d  2      OPC=movl_r32_r32    
  orl $0x4, 0x10(%r15,%rax,1)  #  38    0x2562f  6      OPC=orl_m32_imm8    
  movl %eax, %eax              #  39    0x25635  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax     #  40    0x25637  4      OPC=movl_r32_m32    
  popq %r11                    #  41    0x2563b  2      OPC=popq_r64_1      
  nop                          #  42    0x2563d  1      OPC=nop             
  nop                          #  43    0x2563e  1      OPC=nop             
  nop                          #  44    0x2563f  1      OPC=nop             
  andl $0xffffffe0, %r11d      #  45    0x25640  7      OPC=andl_r32_imm32  
  nop                          #  46    0x25647  1      OPC=nop             
  nop                          #  47    0x25648  1      OPC=nop             
  nop                          #  48    0x25649  1      OPC=nop             
  nop                          #  49    0x2564a  1      OPC=nop             
  addq %r15, %r11              #  50    0x2564b  3      OPC=addq_r64_r64    
  jmpq %r11                    #  51    0x2564e  3      OPC=jmpq_r64        
  nop                          #  52    0x25651  1      OPC=nop             
  nop                          #  53    0x25652  1      OPC=nop             
  nop                          #  54    0x25653  1      OPC=nop             
  nop                          #  55    0x25654  1      OPC=nop             
  nop                          #  56    0x25655  1      OPC=nop             
  nop                          #  57    0x25656  1      OPC=nop             
  nop                          #  58    0x25657  1      OPC=nop             
  nop                          #  59    0x25658  1      OPC=nop             
  nop                          #  60    0x25659  1      OPC=nop             
  nop                          #  61    0x2565a  1      OPC=nop             
  nop                          #  62    0x2565b  1      OPC=nop             
  nop                          #  63    0x2565c  1      OPC=nop             
  nop                          #  64    0x2565d  1      OPC=nop             
  nop                          #  65    0x2565e  1      OPC=nop             
  nop                          #  66    0x2565f  1      OPC=nop             
  nop                          #  67    0x25660  1      OPC=nop             
  nop                          #  68    0x25661  1      OPC=nop             
  nop                          #  69    0x25662  1      OPC=nop             
  nop                          #  70    0x25663  1      OPC=nop             
  nop                          #  71    0x25664  1      OPC=nop             
  nop                          #  72    0x25665  1      OPC=nop             
  nop                          #  73    0x25666  1      OPC=nop             
                                                                            
.size idlefn, .-idlefn

