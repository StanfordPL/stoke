  .text
  .globl pulse
  .type pulse, @function

#! file-offset 0x70280
#! rip-offset  0x30280
#! capacity    96 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.pulse:                        #        0x30280  0      OPC=<label>         
  subl $0x18, %esp             #  1     0x30280  3      OPC=subl_r32_imm8   
  addq %r15, %rsp              #  2     0x30283  3      OPC=addq_r64_r64    
  movl %edi, %edi              #  3     0x30286  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  4     0x30288  2      OPC=movl_r32_r32    
  lock                         #  5     0x3028a  1      OPC=lock            
  addl $0x1, (%r15,%rdi,1)     #  6     0x3028b  5      OPC=addl_m32_imm8   
  nop                          #  7     0x30290  1      OPC=nop             
  movl 0x10048f36(%rip), %eax  #  8     0x30291  6      OPC=movl_r32_m32    
  leal 0xc(%rsp), %edx         #  9     0x30297  4      OPC=leal_r32_m16    
  nop                          #  10    0x3029b  1      OPC=nop             
  nop                          #  11    0x3029c  1      OPC=nop             
  nop                          #  12    0x3029d  1      OPC=nop             
  nop                          #  13    0x3029e  1      OPC=nop             
  nop                          #  14    0x3029f  1      OPC=nop             
  nop                          #  15    0x302a0  1      OPC=nop             
  nop                          #  16    0x302a1  1      OPC=nop             
  nop                          #  17    0x302a2  1      OPC=nop             
  nop                          #  18    0x302a3  1      OPC=nop             
  nop                          #  19    0x302a4  1      OPC=nop             
  nop                          #  20    0x302a5  1      OPC=nop             
  nop                          #  21    0x302a6  1      OPC=nop             
  nop                          #  22    0x302a7  1      OPC=nop             
  nop                          #  23    0x302a8  1      OPC=nop             
  nop                          #  24    0x302a9  1      OPC=nop             
  nop                          #  25    0x302aa  1      OPC=nop             
  nop                          #  26    0x302ab  1      OPC=nop             
  nop                          #  27    0x302ac  1      OPC=nop             
  nop                          #  28    0x302ad  1      OPC=nop             
  nop                          #  29    0x302ae  1      OPC=nop             
  nop                          #  30    0x302af  1      OPC=nop             
  nop                          #  31    0x302b0  1      OPC=nop             
  nop                          #  32    0x302b1  1      OPC=nop             
  nop                          #  33    0x302b2  1      OPC=nop             
  nop                          #  34    0x302b3  1      OPC=nop             
  nop                          #  35    0x302b4  1      OPC=nop             
  nop                          #  36    0x302b5  1      OPC=nop             
  nop                          #  37    0x302b6  1      OPC=nop             
  nop                          #  38    0x302b7  1      OPC=nop             
  nop                          #  39    0x302b8  1      OPC=nop             
  andl $0xffffffe0, %eax       #  40    0x302b9  6      OPC=andl_r32_imm32  
  nop                          #  41    0x302bf  1      OPC=nop             
  nop                          #  42    0x302c0  1      OPC=nop             
  nop                          #  43    0x302c1  1      OPC=nop             
  addq %r15, %rax              #  44    0x302c2  3      OPC=addq_r64_r64    
  callq %rax                   #  45    0x302c5  2      OPC=callq_r64       
  addl $0x18, %esp             #  46    0x302c7  3      OPC=addl_r32_imm8   
  addq %r15, %rsp              #  47    0x302ca  3      OPC=addq_r64_r64    
  xorl %eax, %eax              #  48    0x302cd  2      OPC=xorl_r32_r32    
  popq %r11                    #  49    0x302cf  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  50    0x302d1  7      OPC=andl_r32_imm32  
  nop                          #  51    0x302d8  1      OPC=nop             
  nop                          #  52    0x302d9  1      OPC=nop             
  nop                          #  53    0x302da  1      OPC=nop             
  nop                          #  54    0x302db  1      OPC=nop             
  addq %r15, %r11              #  55    0x302dc  3      OPC=addq_r64_r64    
  jmpq %r11                    #  56    0x302df  3      OPC=jmpq_r64        
  nop                          #  57    0x302e2  1      OPC=nop             
  nop                          #  58    0x302e3  1      OPC=nop             
  nop                          #  59    0x302e4  1      OPC=nop             
  nop                          #  60    0x302e5  1      OPC=nop             
  nop                          #  61    0x302e6  1      OPC=nop             
  nop                          #  62    0x302e7  1      OPC=nop             
  nop                          #  63    0x302e8  1      OPC=nop             
  nop                          #  64    0x302e9  1      OPC=nop             
  nop                          #  65    0x302ea  1      OPC=nop             
  nop                          #  66    0x302eb  1      OPC=nop             
  nop                          #  67    0x302ec  1      OPC=nop             
  nop                          #  68    0x302ed  1      OPC=nop             
                                                                            
.size pulse, .-pulse

