// Generated by svd2swift.

// swift-format-ignore-file

import MMIO

/// Universal synchronous asynchronous receiver transmitter
@RegisterBlock
struct USART1 {
  /// Control register 1
  @RegisterBlock(offset: 0x0)
  var cr1: Register<CR1>

  /// Control register 2
  @RegisterBlock(offset: 0x4)
  var cr2: Register<CR2>

  /// Control register 3
  @RegisterBlock(offset: 0x8)
  var cr3: Register<CR3>

  /// Baud rate register
  @RegisterBlock(offset: 0xc)
  var brr: Register<BRR>

  /// Guard time and prescaler register
  @RegisterBlock(offset: 0x10)
  var gtpr: Register<GTPR>

  /// Receiver timeout register
  @RegisterBlock(offset: 0x14)
  var rtor: Register<RTOR>

  /// Request register
  @RegisterBlock(offset: 0x18)
  var rqr: Register<RQR>

  /// Interrupt & status register
  @RegisterBlock(offset: 0x1c)
  var isr: Register<ISR>

  /// Interrupt flag clear register
  @RegisterBlock(offset: 0x20)
  var icr: Register<ICR>

  /// Receive data register
  @RegisterBlock(offset: 0x24)
  var rdr: Register<RDR>

  /// Transmit data register
  @RegisterBlock(offset: 0x28)
  var tdr: Register<TDR>
}

extension USART1 {
  /// Control register 1
  @Register(bitWidth: 32)
  struct CR1 {
    /// Word length
    @ReadWrite(bits: 28..<29)
    var m1: M1

    /// End of Block interrupt enable
    @ReadWrite(bits: 27..<28)
    var eobie: EOBIE

    /// Receiver timeout interrupt enable
    @ReadWrite(bits: 26..<27)
    var rtoie: RTOIE

    /// Driver Enable assertion time
    @ReadWrite(bits: 25..<26)
    var deat4: DEAT4

    /// DEAT3
    @ReadWrite(bits: 24..<25)
    var deat3: DEAT3

    /// DEAT2
    @ReadWrite(bits: 23..<24)
    var deat2: DEAT2

    /// DEAT1
    @ReadWrite(bits: 22..<23)
    var deat1: DEAT1

    /// DEAT0
    @ReadWrite(bits: 21..<22)
    var deat0: DEAT0

    /// Driver Enable de-assertion time
    @ReadWrite(bits: 20..<21)
    var dedt4: DEDT4

    /// DEDT3
    @ReadWrite(bits: 19..<20)
    var dedt3: DEDT3

    /// DEDT2
    @ReadWrite(bits: 18..<19)
    var dedt2: DEDT2

    /// DEDT1
    @ReadWrite(bits: 17..<18)
    var dedt1: DEDT1

    /// DEDT0
    @ReadWrite(bits: 16..<17)
    var dedt0: DEDT0

    /// Oversampling mode
    @ReadWrite(bits: 15..<16)
    var over8: OVER8

    /// Character match interrupt enable
    @ReadWrite(bits: 14..<15)
    var cmie: CMIE

    /// Mute mode enable
    @ReadWrite(bits: 13..<14)
    var mme: MME

    /// Word length
    @ReadWrite(bits: 12..<13)
    var m0: M0

    /// Receiver wakeup method
    @ReadWrite(bits: 11..<12)
    var wake: WAKE

    /// Parity control enable
    @ReadWrite(bits: 10..<11)
    var pce: PCE

    /// Parity selection
    @ReadWrite(bits: 9..<10)
    var ps: PS

    /// PE interrupt enable
    @ReadWrite(bits: 8..<9)
    var peie: PEIE

    /// interrupt enable
    @ReadWrite(bits: 7..<8)
    var txeie: TXEIE

    /// Transmission complete interrupt enable
    @ReadWrite(bits: 6..<7)
    var tcie: TCIE

    /// RXNE interrupt enable
    @ReadWrite(bits: 5..<6)
    var rxneie: RXNEIE

    /// IDLE interrupt enable
    @ReadWrite(bits: 4..<5)
    var idleie: IDLEIE

    /// Transmitter enable
    @ReadWrite(bits: 3..<4)
    var te: TE

    /// Receiver enable
    @ReadWrite(bits: 2..<3)
    var re: RE

    /// USART enable in Stop mode
    @ReadWrite(bits: 1..<2)
    var uesm: UESM

    /// USART enable
    @ReadWrite(bits: 0..<1)
    var ue: UE
  }

  /// Control register 2
  @Register(bitWidth: 32)
  struct CR2 {
    /// Address of the USART node
    @ReadWrite(bits: 28..<32)
    var add4_7: ADD4_7

    /// Address of the USART node
    @ReadWrite(bits: 24..<28)
    var add0_3: ADD0_3

    /// Receiver timeout enable
    @ReadWrite(bits: 23..<24)
    var rtoen: RTOEN

    /// Auto baud rate mode
    @ReadWrite(bits: 22..<23)
    var abrmod1: ABRMOD1

    /// ABRMOD0
    @ReadWrite(bits: 21..<22)
    var abrmod0: ABRMOD0

    /// Auto baud rate enable
    @ReadWrite(bits: 20..<21)
    var abren: ABREN

    /// Most significant bit first
    @ReadWrite(bits: 19..<20)
    var msbfirst: MSBFIRST

    /// Binary data inversion
    @ReadWrite(bits: 18..<19)
    var tainv: TAINV

    /// TX pin active level inversion
    @ReadWrite(bits: 17..<18)
    var txinv: TXINV

    /// RX pin active level inversion
    @ReadWrite(bits: 16..<17)
    var rxinv: RXINV

    /// Swap TX/RX pins
    @ReadWrite(bits: 15..<16)
    var swap: SWAP

    /// LIN mode enable
    @ReadWrite(bits: 14..<15)
    var linen: LINEN

    /// STOP bits
    @ReadWrite(bits: 12..<14)
    var stop: STOP

    /// Clock enable
    @ReadWrite(bits: 11..<12)
    var clken: CLKEN

    /// Clock polarity
    @ReadWrite(bits: 10..<11)
    var cpol: CPOL

    /// Clock phase
    @ReadWrite(bits: 9..<10)
    var cpha: CPHA

    /// Last bit clock pulse
    @ReadWrite(bits: 8..<9)
    var lbcl: LBCL

    /// LIN break detection interrupt enable
    @ReadWrite(bits: 6..<7)
    var lbdie: LBDIE

    /// LIN break detection length
    @ReadWrite(bits: 5..<6)
    var lbdl: LBDL

    /// 7-bit Address Detection/4-bit Address Detection
    @ReadWrite(bits: 4..<5)
    var addm7: ADDM7
  }

  /// Control register 3
  @Register(bitWidth: 32)
  struct CR3 {
    /// Wakeup from Stop mode interrupt enable
    @ReadWrite(bits: 22..<23)
    var wufie: WUFIE

    /// Wakeup from Stop mode interrupt flag selection
    @ReadWrite(bits: 20..<22)
    var wus: WUS

    /// Smartcard auto-retry count
    @ReadWrite(bits: 17..<20)
    var scarcnt: SCARCNT

    /// Driver enable polarity selection
    @ReadWrite(bits: 15..<16)
    var dep: DEP

    /// Driver enable mode
    @ReadWrite(bits: 14..<15)
    var dem: DEM

    /// DMA Disable on Reception Error
    @ReadWrite(bits: 13..<14)
    var ddre: DDRE

    /// Overrun Disable
    @ReadWrite(bits: 12..<13)
    var ovrdis: OVRDIS

    /// One sample bit method enable
    @ReadWrite(bits: 11..<12)
    var onebit: ONEBIT

    /// CTS interrupt enable
    @ReadWrite(bits: 10..<11)
    var ctsie: CTSIE

    /// CTS enable
    @ReadWrite(bits: 9..<10)
    var ctse: CTSE

    /// RTS enable
    @ReadWrite(bits: 8..<9)
    var rtse: RTSE

    /// DMA enable transmitter
    @ReadWrite(bits: 7..<8)
    var dmat: DMAT

    /// DMA enable receiver
    @ReadWrite(bits: 6..<7)
    var dmar: DMAR

    /// Smartcard mode enable
    @ReadWrite(bits: 5..<6)
    var scen: SCEN

    /// Smartcard NACK enable
    @ReadWrite(bits: 4..<5)
    var nack: NACK

    /// Half-duplex selection
    @ReadWrite(bits: 3..<4)
    var hdsel: HDSEL

    /// Ir low-power
    @ReadWrite(bits: 2..<3)
    var irlp: IRLP

    /// Ir mode enable
    @ReadWrite(bits: 1..<2)
    var iren: IREN

    /// Error interrupt enable
    @ReadWrite(bits: 0..<1)
    var eie: EIE
  }

  /// Baud rate register
  @Register(bitWidth: 32)
  struct BRR {
    /// DIV_Mantissa
    @ReadWrite(bits: 4..<16)
    var div_mantissa: DIV_Mantissa

    /// DIV_Fraction
    @ReadWrite(bits: 0..<4)
    var div_fraction: DIV_Fraction
  }

  /// Guard time and prescaler register
  @Register(bitWidth: 32)
  struct GTPR {
    /// Guard time value
    @ReadWrite(bits: 8..<16)
    var gt: GT

    /// Prescaler value
    @ReadWrite(bits: 0..<8)
    var psc: PSC
  }

  /// Receiver timeout register
  @Register(bitWidth: 32)
  struct RTOR {
    /// Block Length
    @ReadWrite(bits: 24..<32)
    var blen: BLEN

    /// Receiver timeout value
    @ReadWrite(bits: 0..<24)
    var rto: RTO
  }

  /// Request register
  @Register(bitWidth: 32)
  struct RQR {
    /// Transmit data flush request
    @WriteOnly(bits: 4..<5)
    var txfrq: TXFRQ

    /// Receive data flush request
    @WriteOnly(bits: 3..<4)
    var rxfrq: RXFRQ

    /// Mute mode request
    @WriteOnly(bits: 2..<3)
    var mmrq: MMRQ

    /// Send break request
    @WriteOnly(bits: 1..<2)
    var sbkrq: SBKRQ

    /// Auto baud rate request
    @WriteOnly(bits: 0..<1)
    var abrrq: ABRRQ
  }

  /// Interrupt & status register
  @Register(bitWidth: 32)
  struct ISR {
    /// REACK
    @ReadOnly(bits: 22..<23)
    var reack: REACK

    /// TEACK
    @ReadOnly(bits: 21..<22)
    var teack: TEACK

    /// WUF
    @ReadOnly(bits: 20..<21)
    var wuf: WUF

    /// RWU
    @ReadOnly(bits: 19..<20)
    var rwu: RWU

    /// SBKF
    @ReadOnly(bits: 18..<19)
    var sbkf: SBKF

    /// CMF
    @ReadOnly(bits: 17..<18)
    var cmf: CMF

    /// BUSY
    @ReadOnly(bits: 16..<17)
    var busy: BUSY

    /// ABRF
    @ReadOnly(bits: 15..<16)
    var abrf: ABRF

    /// ABRE
    @ReadOnly(bits: 14..<15)
    var abre: ABRE

    /// EOBF
    @ReadOnly(bits: 12..<13)
    var eobf: EOBF

    /// RTOF
    @ReadOnly(bits: 11..<12)
    var rtof: RTOF

    /// CTS
    @ReadOnly(bits: 10..<11)
    var cts: CTS

    /// CTSIF
    @ReadOnly(bits: 9..<10)
    var ctsif: CTSIF

    /// LBDF
    @ReadOnly(bits: 8..<9)
    var lbdf: LBDF

    /// TXE
    @ReadOnly(bits: 7..<8)
    var txe: TXE

    /// TC
    @ReadOnly(bits: 6..<7)
    var tc: TC

    /// RXNE
    @ReadOnly(bits: 5..<6)
    var rxne: RXNE

    /// IDLE
    @ReadOnly(bits: 4..<5)
    var idle: IDLE

    /// ORE
    @ReadOnly(bits: 3..<4)
    var ore: ORE

    /// NF
    @ReadOnly(bits: 2..<3)
    var nf: NF

    /// FE
    @ReadOnly(bits: 1..<2)
    var fe: FE

    /// PE
    @ReadOnly(bits: 0..<1)
    var pe: PE
  }

  /// Interrupt flag clear register
  @Register(bitWidth: 32)
  struct ICR {
    /// Wakeup from Stop mode clear flag
    @WriteOnly(bits: 20..<21)
    var wucf: WUCF

    /// Character match clear flag
    @WriteOnly(bits: 17..<18)
    var cmcf: CMCF

    /// End of block clear flag
    @WriteOnly(bits: 12..<13)
    var eobcf: EOBCF

    /// Receiver timeout clear flag
    @WriteOnly(bits: 11..<12)
    var rtocf: RTOCF

    /// CTS clear flag
    @WriteOnly(bits: 9..<10)
    var ctscf: CTSCF

    /// LIN break detection clear flag
    @WriteOnly(bits: 8..<9)
    var lbdcf: LBDCF

    /// Transmission complete clear flag
    @WriteOnly(bits: 6..<7)
    var tccf: TCCF

    /// Idle line detected clear flag
    @WriteOnly(bits: 4..<5)
    var idlecf: IDLECF

    /// Overrun error clear flag
    @WriteOnly(bits: 3..<4)
    var orecf: ORECF

    /// Noise detected clear flag
    @WriteOnly(bits: 2..<3)
    var ncf: NCF

    /// Framing error clear flag
    @WriteOnly(bits: 1..<2)
    var fecf: FECF

    /// Parity error clear flag
    @WriteOnly(bits: 0..<1)
    var pecf: PECF
  }

  /// Receive data register
  @Register(bitWidth: 32)
  struct RDR {
    /// Receive data value
    @ReadOnly(bits: 0..<9)
    var rdr_field: RDR_FIELD
  }

  /// Transmit data register
  @Register(bitWidth: 32)
  struct TDR {
    /// Transmit data value
    @ReadWrite(bits: 0..<9)
    var tdr_field: TDR_FIELD
  }
}
