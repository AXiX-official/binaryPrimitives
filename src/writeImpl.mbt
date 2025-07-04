pub fn writeBool(dest : ArrayView[Byte], value : Bool) -> Unit raise Error {
  if dest.length() < 1 {
    raise IndexOutOfBounds
  }
  dest[0] = if value { 1 } else { 0 }
}

pub fn writeByte(dest : ArrayView[Byte], value : Byte) -> Unit raise Error {
  if dest.length() < 1 {
    raise IndexOutOfBounds
  }
  dest[0] = value
}

pub fn writeUI16Le(dest : ArrayView[Byte], value : UInt16) -> Unit raise Error {
  if dest.length() < 2 {
    raise IndexOutOfBounds
  }
  dest[0] = value.to_byte()
  dest[1] = (value >> 8).to_byte()
}

pub fn writeUI16Be(dest : ArrayView[Byte], value : UInt16) -> Unit raise Error {
  if dest.length() < 2 {
    raise IndexOutOfBounds
  }
  dest[0] = (value >> 8).to_byte()
  dest[1] = value.to_byte()
}

pub fn writeI16Be(dest : ArrayView[Byte], value : Int16) -> Unit raise Error {
  if dest.length() < 2 {
    raise IndexOutOfBounds
  }
  dest[0] = (value >> 8).to_byte()
  dest[1] = value.to_byte()
}

pub fn writeI16Le(dest : ArrayView[Byte], value : Int16) -> Unit raise Error {
  if dest.length() < 2 {
    raise IndexOutOfBounds
  }
  dest[0] = value.to_byte()
  dest[1] = (value >> 8).to_byte()
}

pub fn writeUI32Le(dest : ArrayView[Byte], value : UInt) -> Unit raise Error {
  if dest.length() < 4 {
    raise IndexOutOfBounds
  }
  dest[0] = value.to_byte()
  dest[1] = (value >> 8).to_byte()
  dest[2] = (value >> 16).to_byte()
  dest[3] = (value >> 24).to_byte()
}

pub fn writeUI32Be(dest : ArrayView[Byte], value : UInt) -> Unit raise Error {
  if dest.length() < 4 {
    raise IndexOutOfBounds
  }
  dest[0] = (value >> 24).to_byte()
  dest[1] = (value >> 16).to_byte()
  dest[2] = (value >> 8).to_byte()
  dest[3] = value.to_byte()
}

pub fn writeI32Le(dest : ArrayView[Byte], value : Int) -> Unit raise Error {
  if dest.length() < 4 {
    raise IndexOutOfBounds
  }
  dest[0] = value.to_byte()
  dest[1] = (value >> 8).to_byte()
  dest[2] = (value >> 16).to_byte()
  dest[3] = (value >> 24).to_byte()
}

pub fn writeI32Be(dest : ArrayView[Byte], value : Int) -> Unit raise Error {
  if dest.length() < 4 {
    raise IndexOutOfBounds
  }
  dest[0] = (value >> 24).to_byte()
  dest[1] = (value >> 16).to_byte()
  dest[2] = (value >> 8).to_byte()
  dest[3] = value.to_byte()
}

pub fn writeUI64Le(dest : ArrayView[Byte], value : UInt64) -> Unit raise Error {
  if dest.length() < 8 {
    raise IndexOutOfBounds
  }
  dest[0] = value.to_byte()
  dest[1] = (value >> 8).to_byte()
  dest[2] = (value >> 16).to_byte()
  dest[3] = (value >> 24).to_byte()
  dest[4] = (value >> 32).to_byte()
  dest[5] = (value >> 40).to_byte()
  dest[6] = (value >> 48).to_byte()
  dest[7] = (value >> 56).to_byte()
}

pub fn writeUI64Be(dest : ArrayView[Byte], value : UInt64) -> Unit raise Error {
  if dest.length() < 8 {
    raise IndexOutOfBounds
  }
  dest[0] = (value >> 56).to_byte()
  dest[1] = (value >> 48).to_byte()
  dest[2] = (value >> 40).to_byte()
  dest[3] = (value >> 32).to_byte()
  dest[4] = (value >> 24).to_byte()
  dest[5] = (value >> 16).to_byte()
  dest[6] = (value >> 8).to_byte()
  dest[7] = value.to_byte()
}

pub fn writeI64Le(dest : ArrayView[Byte], value : Int64) -> Unit raise Error {
  if dest.length() < 8 {
    raise IndexOutOfBounds
  }
  dest[0] = value.to_byte()
  dest[1] = (value >> 8).to_byte()
  dest[2] = (value >> 16).to_byte()
  dest[3] = (value >> 24).to_byte()
  dest[4] = (value >> 32).to_byte()
  dest[5] = (value >> 40).to_byte()
  dest[6] = (value >> 48).to_byte()
  dest[7] = (value >> 56).to_byte()
}

pub fn writeI64Be(dest : ArrayView[Byte], value : Int64) -> Unit raise Error {
  if dest.length() < 8 {
    raise IndexOutOfBounds
  }
  dest[0] = (value >> 56).to_byte()
  dest[1] = (value >> 48).to_byte()
  dest[2] = (value >> 40).to_byte()
  dest[3] = (value >> 32).to_byte()
  dest[4] = (value >> 24).to_byte()
  dest[5] = (value >> 16).to_byte()
  dest[6] = (value >> 8).to_byte()
  dest[7] = value.to_byte()
}

pub fn writeF32Le(dest : ArrayView[Byte], value : Float) -> Unit raise Error {
  writeUI32Le(dest, value.reinterpret_as_uint())
}

pub fn writeF32Be(dest : ArrayView[Byte], value : Float) -> Unit raise Error {
  writeUI32Be(dest, value.reinterpret_as_uint())
}

pub fn writeF64Le(dest : ArrayView[Byte], value : Double) -> Unit raise Error {
  writeUI64Le(dest, value.reinterpret_as_uint64())
}

pub fn writeF64Be(dest : ArrayView[Byte], value : Double) -> Unit raise Error {
  writeUI64Be(dest, value.reinterpret_as_uint64())
}