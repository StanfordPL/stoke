  .text
  .globl exit
  .type exit, @function

#! file-offset 0x159800
#! rip-offset  0x119800
#! capacity    96 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
.exit:                          #        0x119800  0      OPC=<label>         
  pushq %rbx                    #  1     0x119800  1      OPC=pushq_r64_1     
  xorl %esi, %esi               #  2     0x119801  2      OPC=xorl_r32_r32    
  movl %edi, %ebx               #  3     0x119803  2      OPC=movl_r32_r32    
  nop                           #  4     0x119805  1      OPC=nop             
  nop                           #  5     0x119806  1      OPC=nop             
  nop                           #  6     0x119807  1      OPC=nop             
  nop                           #  7     0x119808  1      OPC=nop             
  nop                           #  8     0x119809  1      OPC=nop             
  nop                           #  9     0x11980a  1      OPC=nop             
  nop                           #  10    0x11980b  1      OPC=nop             
  nop                           #  11    0x11980c  1      OPC=nop             
  nop                           #  12    0x11980d  1      OPC=nop             
  nop                           #  13    0x11980e  1      OPC=nop             
  nop                           #  14    0x11980f  1      OPC=nop             
  nop                           #  15    0x119810  1      OPC=nop             
  nop                           #  16    0x119811  1      OPC=nop             
  nop                           #  17    0x119812  1      OPC=nop             
  nop                           #  18    0x119813  1      OPC=nop             
  nop                           #  19    0x119814  1      OPC=nop             
  nop                           #  20    0x119815  1      OPC=nop             
  nop                           #  21    0x119816  1      OPC=nop             
  nop                           #  22    0x119817  1      OPC=nop             
  nop                           #  23    0x119818  1      OPC=nop             
  nop                           #  24    0x119819  1      OPC=nop             
  nop                           #  25    0x11981a  1      OPC=nop             
  callq .__call_exitprocs       #  26    0x11981b  5      OPC=callq_label     
  movl 0xff275ba(%rip), %edi    #  27    0x119820  6      OPC=movl_r32_m32    
  movl %edi, %edi               #  28    0x119826  2      OPC=movl_r32_r32    
  movl 0x3c(%r15,%rdi,1), %eax  #  29    0x119828  5      OPC=movl_r32_m32    
  testq %rax, %rax              #  30    0x11982d  3      OPC=testq_r64_r64   
  je .L_119840                  #  31    0x119830  2      OPC=je_label        
  nop                           #  32    0x119832  1      OPC=nop             
  nop                           #  33    0x119833  1      OPC=nop             
  nop                           #  34    0x119834  1      OPC=nop             
  nop                           #  35    0x119835  1      OPC=nop             
  nop                           #  36    0x119836  1      OPC=nop             
  nop                           #  37    0x119837  1      OPC=nop             
  andl $0xffffffe0, %eax        #  38    0x119838  6      OPC=andl_r32_imm32  
  nop                           #  39    0x11983e  1      OPC=nop             
  nop                           #  40    0x11983f  1      OPC=nop             
  nop                           #  41    0x119840  1      OPC=nop             
  addq %r15, %rax               #  42    0x119841  3      OPC=addq_r64_r64    
  callq %rax                    #  43    0x119844  2      OPC=callq_r64       
.L_119840:                      #        0x119846  0      OPC=<label>         
  movl %ebx, %edi               #  44    0x119846  2      OPC=movl_r32_r32    
  nop                           #  45    0x119848  1      OPC=nop             
  nop                           #  46    0x119849  1      OPC=nop             
  nop                           #  47    0x11984a  1      OPC=nop             
  nop                           #  48    0x11984b  1      OPC=nop             
  nop                           #  49    0x11984c  1      OPC=nop             
  nop                           #  50    0x11984d  1      OPC=nop             
  nop                           #  51    0x11984e  1      OPC=nop             
  nop                           #  52    0x11984f  1      OPC=nop             
  nop                           #  53    0x119850  1      OPC=nop             
  nop                           #  54    0x119851  1      OPC=nop             
  nop                           #  55    0x119852  1      OPC=nop             
  nop                           #  56    0x119853  1      OPC=nop             
  nop                           #  57    0x119854  1      OPC=nop             
  nop                           #  58    0x119855  1      OPC=nop             
  nop                           #  59    0x119856  1      OPC=nop             
  nop                           #  60    0x119857  1      OPC=nop             
  nop                           #  61    0x119858  1      OPC=nop             
  nop                           #  62    0x119859  1      OPC=nop             
  nop                           #  63    0x11985a  1      OPC=nop             
  nop                           #  64    0x11985b  1      OPC=nop             
  nop                           #  65    0x11985c  1      OPC=nop             
  nop                           #  66    0x11985d  1      OPC=nop             
  nop                           #  67    0x11985e  1      OPC=nop             
  nop                           #  68    0x11985f  1      OPC=nop             
  nop                           #  69    0x119860  1      OPC=nop             
  callq ._exit                  #  70    0x119861  5      OPC=callq_label     
                                                                              
.size exit, .-exit

