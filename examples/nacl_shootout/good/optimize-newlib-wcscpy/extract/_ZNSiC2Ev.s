  .text
  .globl _ZNSiC2Ev
  .type _ZNSiC2Ev, @function

#! file-offset 0xa77a0
#! rip-offset  0x677a0
#! capacity    160 bytes

# Text                                                                         #  Line  RIP      Bytes  Opcode              
._ZNSiC2Ev:                                                                    #        0x677a0  0      OPC=<label>         
  movl %esi, %esi                                                              #  1     0x677a0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                              #  2     0x677a2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                              #  3     0x677a5  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                              #  4     0x677a8  2      OPC=movl_r32_r32    
  movl %esi, %esi                                                              #  5     0x677aa  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                                                     #  6     0x677ac  4      OPC=movl_r32_m32    
  movl %esi, %esi                                                              #  7     0x677b0  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rsi,1), %edx                                                  #  8     0x677b2  5      OPC=movl_r32_m32    
  xorl %esi, %esi                                                              #  9     0x677b7  2      OPC=xorl_r32_r32    
  movl %edi, %edi                                                              #  10    0x677b9  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)                                                     #  11    0x677bb  4      OPC=movl_m32_r32    
  nop                                                                          #  12    0x677bf  1      OPC=nop             
  subl $0xc, %eax                                                              #  13    0x677c0  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                              #  14    0x677c3  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                                                     #  15    0x677c5  4      OPC=movl_r32_m32    
  movl %edi, %edi                                                              #  16    0x677c9  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rdi,1)                                                  #  17    0x677cb  9      OPC=movl_m32_imm32  
  addl %edi, %eax                                                              #  18    0x677d4  2      OPC=addl_r32_r32    
  movl %eax, %eax                                                              #  19    0x677d6  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)                                                     #  20    0x677d8  4      OPC=movl_m32_r32    
  nop                                                                          #  21    0x677dc  1      OPC=nop             
  nop                                                                          #  22    0x677dd  1      OPC=nop             
  nop                                                                          #  23    0x677de  1      OPC=nop             
  nop                                                                          #  24    0x677df  1      OPC=nop             
  movl %edi, %edi                                                              #  25    0x677e0  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                     #  26    0x677e2  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                              #  27    0x677e6  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                              #  28    0x677e9  2      OPC=movl_r32_r32    
  addl (%r15,%rax,1), %edi                                                     #  29    0x677eb  4      OPC=addl_r32_m32    
  nop                                                                          #  30    0x677ef  1      OPC=nop             
  nop                                                                          #  31    0x677f0  1      OPC=nop             
  nop                                                                          #  32    0x677f1  1      OPC=nop             
  nop                                                                          #  33    0x677f2  1      OPC=nop             
  nop                                                                          #  34    0x677f3  1      OPC=nop             
  nop                                                                          #  35    0x677f4  1      OPC=nop             
  nop                                                                          #  36    0x677f5  1      OPC=nop             
  nop                                                                          #  37    0x677f6  1      OPC=nop             
  nop                                                                          #  38    0x677f7  1      OPC=nop             
  nop                                                                          #  39    0x677f8  1      OPC=nop             
  nop                                                                          #  40    0x677f9  1      OPC=nop             
  nop                                                                          #  41    0x677fa  1      OPC=nop             
  callq ._ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E  #  42    0x677fb  5      OPC=callq_label     
  addl $0x8, %esp                                                              #  43    0x67800  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                              #  44    0x67803  3      OPC=addq_r64_r64    
  popq %r11                                                                    #  45    0x67806  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                      #  46    0x67808  7      OPC=andl_r32_imm32  
  nop                                                                          #  47    0x6780f  1      OPC=nop             
  nop                                                                          #  48    0x67810  1      OPC=nop             
  nop                                                                          #  49    0x67811  1      OPC=nop             
  nop                                                                          #  50    0x67812  1      OPC=nop             
  addq %r15, %r11                                                              #  51    0x67813  3      OPC=addq_r64_r64    
  jmpq %r11                                                                    #  52    0x67816  3      OPC=jmpq_r64        
  nop                                                                          #  53    0x67819  1      OPC=nop             
  nop                                                                          #  54    0x6781a  1      OPC=nop             
  nop                                                                          #  55    0x6781b  1      OPC=nop             
  nop                                                                          #  56    0x6781c  1      OPC=nop             
  nop                                                                          #  57    0x6781d  1      OPC=nop             
  nop                                                                          #  58    0x6781e  1      OPC=nop             
  nop                                                                          #  59    0x6781f  1      OPC=nop             
  nop                                                                          #  60    0x67820  1      OPC=nop             
  nop                                                                          #  61    0x67821  1      OPC=nop             
  nop                                                                          #  62    0x67822  1      OPC=nop             
  nop                                                                          #  63    0x67823  1      OPC=nop             
  nop                                                                          #  64    0x67824  1      OPC=nop             
  nop                                                                          #  65    0x67825  1      OPC=nop             
  nop                                                                          #  66    0x67826  1      OPC=nop             
  movl %eax, %edi                                                              #  67    0x67827  2      OPC=movl_r32_r32    
  nop                                                                          #  68    0x67829  1      OPC=nop             
  nop                                                                          #  69    0x6782a  1      OPC=nop             
  nop                                                                          #  70    0x6782b  1      OPC=nop             
  nop                                                                          #  71    0x6782c  1      OPC=nop             
  nop                                                                          #  72    0x6782d  1      OPC=nop             
  nop                                                                          #  73    0x6782e  1      OPC=nop             
  nop                                                                          #  74    0x6782f  1      OPC=nop             
  nop                                                                          #  75    0x67830  1      OPC=nop             
  nop                                                                          #  76    0x67831  1      OPC=nop             
  nop                                                                          #  77    0x67832  1      OPC=nop             
  nop                                                                          #  78    0x67833  1      OPC=nop             
  nop                                                                          #  79    0x67834  1      OPC=nop             
  nop                                                                          #  80    0x67835  1      OPC=nop             
  nop                                                                          #  81    0x67836  1      OPC=nop             
  nop                                                                          #  82    0x67837  1      OPC=nop             
  nop                                                                          #  83    0x67838  1      OPC=nop             
  nop                                                                          #  84    0x67839  1      OPC=nop             
  nop                                                                          #  85    0x6783a  1      OPC=nop             
  nop                                                                          #  86    0x6783b  1      OPC=nop             
  nop                                                                          #  87    0x6783c  1      OPC=nop             
  nop                                                                          #  88    0x6783d  1      OPC=nop             
  nop                                                                          #  89    0x6783e  1      OPC=nop             
  nop                                                                          #  90    0x6783f  1      OPC=nop             
  nop                                                                          #  91    0x67840  1      OPC=nop             
  nop                                                                          #  92    0x67841  1      OPC=nop             
  callq ._Unwind_Resume                                                        #  93    0x67842  5      OPC=callq_label     
                                                                                                                            
.size _ZNSiC2Ev, .-_ZNSiC2Ev

