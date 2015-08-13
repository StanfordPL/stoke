  .text
  .globl _ZN17__eh_globals_initD1Ev
  .type _ZN17__eh_globals_initD1Ev, @function

#! file-offset 0x1206a0
#! rip-offset  0xe06a0
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
._ZN17__eh_globals_initD1Ev:   #        0xe06a0  0      OPC=<label>         
  pushq %rbx                   #  1     0xe06a0  1      OPC=pushq_r64_1     
  movl %edi, %ebx              #  2     0xe06a1  2      OPC=movl_r32_r32    
  movl %ebx, %ebx              #  3     0xe06a3  2      OPC=movl_r32_r32    
  cmpb $0x0, 0x4(%r15,%rbx,1)  #  4     0xe06a5  6      OPC=cmpb_m8_imm8    
  jne .L_e06e0                 #  5     0xe06ab  2      OPC=jne_label       
  movl %ebx, %ebx              #  6     0xe06ad  2      OPC=movl_r32_r32    
  movb $0x0, 0x4(%r15,%rbx,1)  #  7     0xe06af  6      OPC=movb_m8_imm8    
  popq %rbx                    #  8     0xe06b5  1      OPC=popq_r64_1      
  popq %r11                    #  9     0xe06b6  2      OPC=popq_r64_1      
  nop                          #  10    0xe06b8  1      OPC=nop             
  nop                          #  11    0xe06b9  1      OPC=nop             
  nop                          #  12    0xe06ba  1      OPC=nop             
  nop                          #  13    0xe06bb  1      OPC=nop             
  nop                          #  14    0xe06bc  1      OPC=nop             
  nop                          #  15    0xe06bd  1      OPC=nop             
  nop                          #  16    0xe06be  1      OPC=nop             
  nop                          #  17    0xe06bf  1      OPC=nop             
  andl $0xffffffe0, %r11d      #  18    0xe06c0  7      OPC=andl_r32_imm32  
  nop                          #  19    0xe06c7  1      OPC=nop             
  nop                          #  20    0xe06c8  1      OPC=nop             
  nop                          #  21    0xe06c9  1      OPC=nop             
  nop                          #  22    0xe06ca  1      OPC=nop             
  addq %r15, %r11              #  23    0xe06cb  3      OPC=addq_r64_r64    
  jmpq %r11                    #  24    0xe06ce  3      OPC=jmpq_r64        
  nop                          #  25    0xe06d1  1      OPC=nop             
  nop                          #  26    0xe06d2  1      OPC=nop             
  nop                          #  27    0xe06d3  1      OPC=nop             
  nop                          #  28    0xe06d4  1      OPC=nop             
  nop                          #  29    0xe06d5  1      OPC=nop             
  nop                          #  30    0xe06d6  1      OPC=nop             
  nop                          #  31    0xe06d7  1      OPC=nop             
  nop                          #  32    0xe06d8  1      OPC=nop             
  nop                          #  33    0xe06d9  1      OPC=nop             
  nop                          #  34    0xe06da  1      OPC=nop             
  nop                          #  35    0xe06db  1      OPC=nop             
  nop                          #  36    0xe06dc  1      OPC=nop             
  nop                          #  37    0xe06dd  1      OPC=nop             
  nop                          #  38    0xe06de  1      OPC=nop             
  nop                          #  39    0xe06df  1      OPC=nop             
  nop                          #  40    0xe06e0  1      OPC=nop             
  nop                          #  41    0xe06e1  1      OPC=nop             
  nop                          #  42    0xe06e2  1      OPC=nop             
  nop                          #  43    0xe06e3  1      OPC=nop             
  nop                          #  44    0xe06e4  1      OPC=nop             
  nop                          #  45    0xe06e5  1      OPC=nop             
  nop                          #  46    0xe06e6  1      OPC=nop             
.L_e06e0:                      #        0xe06e7  0      OPC=<label>         
  movl %ebx, %ebx              #  47    0xe06e7  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %edi     #  48    0xe06e9  4      OPC=movl_r32_m32    
  nop                          #  49    0xe06ed  1      OPC=nop             
  nop                          #  50    0xe06ee  1      OPC=nop             
  nop                          #  51    0xe06ef  1      OPC=nop             
  nop                          #  52    0xe06f0  1      OPC=nop             
  nop                          #  53    0xe06f1  1      OPC=nop             
  nop                          #  54    0xe06f2  1      OPC=nop             
  nop                          #  55    0xe06f3  1      OPC=nop             
  nop                          #  56    0xe06f4  1      OPC=nop             
  nop                          #  57    0xe06f5  1      OPC=nop             
  nop                          #  58    0xe06f6  1      OPC=nop             
  nop                          #  59    0xe06f7  1      OPC=nop             
  nop                          #  60    0xe06f8  1      OPC=nop             
  nop                          #  61    0xe06f9  1      OPC=nop             
  nop                          #  62    0xe06fa  1      OPC=nop             
  nop                          #  63    0xe06fb  1      OPC=nop             
  nop                          #  64    0xe06fc  1      OPC=nop             
  nop                          #  65    0xe06fd  1      OPC=nop             
  nop                          #  66    0xe06fe  1      OPC=nop             
  nop                          #  67    0xe06ff  1      OPC=nop             
  nop                          #  68    0xe0700  1      OPC=nop             
  nop                          #  69    0xe0701  1      OPC=nop             
  callq .pthread_key_delete    #  70    0xe0702  5      OPC=callq_label     
  movl %ebx, %ebx              #  71    0xe0707  2      OPC=movl_r32_r32    
  movb $0x0, 0x4(%r15,%rbx,1)  #  72    0xe0709  6      OPC=movb_m8_imm8    
  popq %rbx                    #  73    0xe070f  1      OPC=popq_r64_1      
  popq %r11                    #  74    0xe0710  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  75    0xe0712  7      OPC=andl_r32_imm32  
  nop                          #  76    0xe0719  1      OPC=nop             
  nop                          #  77    0xe071a  1      OPC=nop             
  nop                          #  78    0xe071b  1      OPC=nop             
  nop                          #  79    0xe071c  1      OPC=nop             
  addq %r15, %r11              #  80    0xe071d  3      OPC=addq_r64_r64    
  jmpq %r11                    #  81    0xe0720  3      OPC=jmpq_r64        
  nop                          #  82    0xe0723  1      OPC=nop             
  nop                          #  83    0xe0724  1      OPC=nop             
  nop                          #  84    0xe0725  1      OPC=nop             
  nop                          #  85    0xe0726  1      OPC=nop             
  nop                          #  86    0xe0727  1      OPC=nop             
  nop                          #  87    0xe0728  1      OPC=nop             
  nop                          #  88    0xe0729  1      OPC=nop             
  nop                          #  89    0xe072a  1      OPC=nop             
  nop                          #  90    0xe072b  1      OPC=nop             
  nop                          #  91    0xe072c  1      OPC=nop             
  nop                          #  92    0xe072d  1      OPC=nop             
                                                                            
.size _ZN17__eh_globals_initD1Ev, .-_ZN17__eh_globals_initD1Ev

