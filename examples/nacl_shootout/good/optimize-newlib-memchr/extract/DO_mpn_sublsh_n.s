  .text
  .globl DO_mpn_sublsh_n
  .type DO_mpn_sublsh_n, @function

#! file-offset 0x905c0
#! rip-offset  0x505c0
#! capacity    160 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.DO_mpn_sublsh_n:          #        0x505c0  0      OPC=<label>         
  movq %r13, -0x10(%rsp)   #  1     0x505c0  5      OPC=movq_m64_r64    
  movl %r8d, %r13d         #  2     0x505c5  3      OPC=movl_r32_r32    
  movq %rbx, -0x20(%rsp)   #  3     0x505c8  5      OPC=movq_m64_r64    
  movq %r12, -0x18(%rsp)   #  4     0x505cd  5      OPC=movq_m64_r64    
  movl %edx, %ebx          #  5     0x505d2  2      OPC=movl_r32_r32    
  movl %edi, %r12d         #  6     0x505d4  3      OPC=movl_r32_r32    
  movq %r14, -0x8(%rsp)    #  7     0x505d7  5      OPC=movq_m64_r64    
  movl %r13d, %edi         #  8     0x505dc  3      OPC=movl_r32_r32    
  nop                      #  9     0x505df  1      OPC=nop             
  subl $0x28, %esp         #  10    0x505e0  3      OPC=subl_r32_imm8   
  addq %r15, %rsp          #  11    0x505e3  3      OPC=addq_r64_r64    
  movl %esi, %esi          #  12    0x505e6  2      OPC=movl_r32_r32    
  nop                      #  13    0x505e8  1      OPC=nop             
  nop                      #  14    0x505e9  1      OPC=nop             
  nop                      #  15    0x505ea  1      OPC=nop             
  nop                      #  16    0x505eb  1      OPC=nop             
  nop                      #  17    0x505ec  1      OPC=nop             
  nop                      #  18    0x505ed  1      OPC=nop             
  nop                      #  19    0x505ee  1      OPC=nop             
  nop                      #  20    0x505ef  1      OPC=nop             
  nop                      #  21    0x505f0  1      OPC=nop             
  nop                      #  22    0x505f1  1      OPC=nop             
  nop                      #  23    0x505f2  1      OPC=nop             
  nop                      #  24    0x505f3  1      OPC=nop             
  nop                      #  25    0x505f4  1      OPC=nop             
  nop                      #  26    0x505f5  1      OPC=nop             
  nop                      #  27    0x505f6  1      OPC=nop             
  nop                      #  28    0x505f7  1      OPC=nop             
  nop                      #  29    0x505f8  1      OPC=nop             
  nop                      #  30    0x505f9  1      OPC=nop             
  nop                      #  31    0x505fa  1      OPC=nop             
  callq .__gmpn_lshift     #  32    0x505fb  5      OPC=callq_label     
  movl %ebx, %ecx          #  33    0x50600  2      OPC=movl_r32_r32    
  movl %eax, %r14d         #  34    0x50602  3      OPC=movl_r32_r32    
  movl %r13d, %edx         #  35    0x50605  3      OPC=movl_r32_r32    
  movl %r12d, %esi         #  36    0x50608  3      OPC=movl_r32_r32    
  movl %r12d, %edi         #  37    0x5060b  3      OPC=movl_r32_r32    
  nop                      #  38    0x5060e  1      OPC=nop             
  nop                      #  39    0x5060f  1      OPC=nop             
  nop                      #  40    0x50610  1      OPC=nop             
  nop                      #  41    0x50611  1      OPC=nop             
  nop                      #  42    0x50612  1      OPC=nop             
  nop                      #  43    0x50613  1      OPC=nop             
  nop                      #  44    0x50614  1      OPC=nop             
  nop                      #  45    0x50615  1      OPC=nop             
  nop                      #  46    0x50616  1      OPC=nop             
  nop                      #  47    0x50617  1      OPC=nop             
  nop                      #  48    0x50618  1      OPC=nop             
  nop                      #  49    0x50619  1      OPC=nop             
  nop                      #  50    0x5061a  1      OPC=nop             
  callq .__gmpn_sub_n      #  51    0x5061b  5      OPC=callq_label     
  movq 0x8(%rsp), %rbx     #  52    0x50620  5      OPC=movq_r64_m64    
  addl %r14d, %eax         #  53    0x50625  3      OPC=addl_r32_r32    
  movq 0x10(%rsp), %r12    #  54    0x50628  5      OPC=movq_r64_m64    
  movq 0x18(%rsp), %r13    #  55    0x5062d  5      OPC=movq_r64_m64    
  movq 0x20(%rsp), %r14    #  56    0x50632  5      OPC=movq_r64_m64    
  addl $0x28, %esp         #  57    0x50637  3      OPC=addl_r32_imm8   
  addq %r15, %rsp          #  58    0x5063a  3      OPC=addq_r64_r64    
  popq %r11                #  59    0x5063d  2      OPC=popq_r64_1      
  nop                      #  60    0x5063f  1      OPC=nop             
  andl $0xffffffe0, %r11d  #  61    0x50640  7      OPC=andl_r32_imm32  
  nop                      #  62    0x50647  1      OPC=nop             
  nop                      #  63    0x50648  1      OPC=nop             
  nop                      #  64    0x50649  1      OPC=nop             
  nop                      #  65    0x5064a  1      OPC=nop             
  addq %r15, %r11          #  66    0x5064b  3      OPC=addq_r64_r64    
  jmpq %r11                #  67    0x5064e  3      OPC=jmpq_r64        
  nop                      #  68    0x50651  1      OPC=nop             
  nop                      #  69    0x50652  1      OPC=nop             
  nop                      #  70    0x50653  1      OPC=nop             
  nop                      #  71    0x50654  1      OPC=nop             
  nop                      #  72    0x50655  1      OPC=nop             
  nop                      #  73    0x50656  1      OPC=nop             
  nop                      #  74    0x50657  1      OPC=nop             
  nop                      #  75    0x50658  1      OPC=nop             
  nop                      #  76    0x50659  1      OPC=nop             
  nop                      #  77    0x5065a  1      OPC=nop             
  nop                      #  78    0x5065b  1      OPC=nop             
  nop                      #  79    0x5065c  1      OPC=nop             
  nop                      #  80    0x5065d  1      OPC=nop             
  nop                      #  81    0x5065e  1      OPC=nop             
  nop                      #  82    0x5065f  1      OPC=nop             
  nop                      #  83    0x50660  1      OPC=nop             
  nop                      #  84    0x50661  1      OPC=nop             
  nop                      #  85    0x50662  1      OPC=nop             
  nop                      #  86    0x50663  1      OPC=nop             
  nop                      #  87    0x50664  1      OPC=nop             
  nop                      #  88    0x50665  1      OPC=nop             
  nop                      #  89    0x50666  1      OPC=nop             
                                                                        
.size DO_mpn_sublsh_n, .-DO_mpn_sublsh_n

