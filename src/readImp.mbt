pub fn readBool(source : ArrayView[Byte]) -> Bool raise Error {
  if source.length() < 1 {
    raise IndexOutOfBounds
  }
  source[0] != 0
}

pub fn readByte(source : ArrayView[Byte]) -> Byte raise Error {
  if source.length() < 1 {
    raise IndexOutOfBounds
  }
  source[0]
}

pub fn readUI16Le(source : ArrayView[Byte]) -> UInt16 raise Error {
  if source.length() < 2 {
    raise IndexOutOfBounds
  }
  source[0].to_uint16() + (source[1].to_uint16() << 8)
}

pub fn readUI16Be(source : ArrayView[Byte]) -> UInt16 raise Error {
  if source.length() < 2 {
    raise IndexOutOfBounds
  }
  (source[0].to_uint16() << 8) + source[1].to_uint16()
}

pub fn readI16Le(source : ArrayView[Byte]) -> Int16 raise Error {
  if source.length() < 2 {
    raise IndexOutOfBounds
  }
  source[0].to_int16() + (source[1].to_int16() << 8)
}

pub fn readI16Be(source : ArrayView[Byte]) -> Int16 raise Error {
  if source.length() < 2 {
    raise IndexOutOfBounds
  }
  (source[0].to_int16() << 8) + source[1].to_int16()
}

pub fn readUI32Le(source : ArrayView[Byte]) -> UInt raise Error {
  if source.length() < 4 {
    raise IndexOutOfBounds
  }
  source[0].to_uint() +
  (source[1].to_uint() << 8) +
  (source[2].to_uint() << 16) +
  (source[3].to_uint() << 24)
}

pub fn readUI32Be(source : ArrayView[Byte]) -> UInt raise Error {
  if source.length() < 4 {
    raise IndexOutOfBounds
  }
  (source[0].to_uint() << 24) +
  (source[1].to_uint() << 16) +
  (source[2].to_uint() << 8) +
  source[3].to_uint()
}

pub fn readI32Le(source : ArrayView[Byte]) -> Int raise Error {
  if source.length() < 4 {
    raise IndexOutOfBounds
  }
  source[0].to_int() +
  (source[1].to_int() << 8) +
  (source[2].to_int() << 16) +
  (source[3].to_int() << 24)
}

pub fn readI32Be(source : ArrayView[Byte]) -> Int raise Error {
  if source.length() < 4 {
    raise IndexOutOfBounds
  }
  (source[0].to_int() << 24) +
  (source[1].to_int() << 16) +
  (source[2].to_int() << 8) +
  source[3].to_int()
}

pub fn readUI64Le(source : ArrayView[Byte]) -> UInt64 raise Error {
  if source.length() < 8 {
    raise IndexOutOfBounds
  }
  source[0].to_uint64() +
  (source[1].to_uint64() << 8) +
  (source[2].to_uint64() << 16) +
  (source[3].to_uint64() << 24) +
  (source[4].to_uint64() << 32) +
  (source[5].to_uint64() << 40) +
  (source[6].to_uint64() << 48) +
  (source[7].to_uint64() << 56)
}

pub fn readUI64Be(source : ArrayView[Byte]) -> UInt64 raise Error {
  if source.length() < 8 {
    raise IndexOutOfBounds
  }
  (source[0].to_uint64() << 56) +
  (source[1].to_uint64() << 48) +
  (source[2].to_uint64() << 40) +
  (source[3].to_uint64() << 32) +
  (source[4].to_uint64() << 24) +
  (source[5].to_uint64() << 16) +
  (source[6].to_uint64() << 8) +
  source[7].to_uint64()
}

pub fn readI64Le(source : ArrayView[Byte]) -> Int64 raise Error {
  if source.length() < 8 {
    raise IndexOutOfBounds
  }
  source[0].to_int64() +
  (source[1].to_int64() << 8) +
  (source[2].to_int64() << 16) +
  (source[3].to_int64() << 24) +
  (source[4].to_int64() << 32) +
  (source[5].to_int64() << 40) +
  (source[6].to_int64() << 48) +
  (source[7].to_int64() << 56)
}

pub fn readI64Be(source : ArrayView[Byte]) -> Int64 raise Error {
  if source.length() < 8 {
    raise IndexOutOfBounds
  }
  (source[0].to_int64() << 56) +
  (source[1].to_int64() << 48) +
  (source[2].to_int64() << 40) +
  (source[3].to_int64() << 32) +
  (source[4].to_int64() << 24) +
  (source[5].to_int64() << 16) +
  (source[6].to_int64() << 8) +
  source[7].to_int64()
}

pub fn readF32Le(source : ArrayView[Byte]) -> Float raise Error {
  readUI32Le(source).reinterpret_as_float()
}

pub fn readF32Be(source : ArrayView[Byte]) -> Float raise Error {
  readUI32Be(source).reinterpret_as_float()
}

pub fn readF64Le(source : ArrayView[Byte]) -> Double raise Error {
  readUI64Le(source).reinterpret_as_double()
}

pub fn readF64Be(source : ArrayView[Byte]) -> Double raise Error {
  readUI64Be(source).reinterpret_as_double()
}