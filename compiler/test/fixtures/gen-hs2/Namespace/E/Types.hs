-----------------------------------------------------------------
-- Autogenerated by Thrift
--
-- DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
--  @generated
-----------------------------------------------------------------
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE BangPatterns #-}
{-# OPTIONS_GHC -fno-warn-unused-imports#-}
{-# OPTIONS_GHC -fno-warn-overlapping-patterns#-}
{-# OPTIONS_GHC -fno-warn-incomplete-patterns#-}
{-# OPTIONS_GHC -fno-warn-incomplete-uni-patterns#-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
module Namespace.E.Types
       (TU__Type, TU__Exception(TU__Exception, _Exception_reason),
        TU__Struct(TU__Struct, _Struct_a, _Struct_b),
        TU__Union(TU__Union_EMPTY, TU__Union_x, TU__Union_y, TU__Union_z),
        a, u)
       where
import qualified Control.DeepSeq as DeepSeq
import qualified Control.Exception as Exception
import qualified Control.Monad as Monad
import qualified Control.Monad.ST.Trans as ST
import qualified Control.Monad.Trans.Class as Trans
import qualified Data.Aeson as Aeson
import qualified Data.Aeson.Types as Aeson
import qualified Data.Default as Default
import qualified Data.HashMap.Strict as HashMap
import qualified Data.Hashable as Hashable
import qualified Data.Int as Int
import qualified Data.List as List
import qualified Data.Ord as Ord
import qualified Data.Set as Set
import qualified Data.Text as Text
import qualified Data.Text.Encoding as Text
import qualified Prelude as Prelude
import qualified Thrift.Binary.Parser as Parser
import qualified Thrift.CodegenTypesOnly as Thrift
import Control.Applicative ((<|>), (*>), (<*))
import Data.Aeson ((.:), (.:?), (.=), (.!=))
import Data.Aeson ((.:), (.=))
import Data.Monoid ((<>))
import Prelude ((.), (<$>), (<*>), (>>=), (==), (++))
import Prelude ((.), (<$>), (<*>), (>>=), (==), (/=), (<), (++))

type TU__Type = Int.Int64

newtype TU__Exception = TU__Exception{_Exception_reason ::
                                      Text.Text}
                        deriving (Prelude.Eq, Prelude.Show, Prelude.Ord)

instance Aeson.ToJSON TU__Exception where
  toJSON (TU__Exception __field__reason)
    = Aeson.object ("reason" .= __field__reason : Prelude.mempty)

instance Thrift.ThriftStruct TU__Exception where
  buildStruct _proxy (TU__Exception __field__reason)
    = Thrift.genStruct _proxy
        (Thrift.genField _proxy "reason" (Thrift.getStringType _proxy) 1 0
           (Thrift.genText _proxy __field__reason)
           : [])
  parseStruct _proxy
    = ST.runSTT
        (do Prelude.return ()
            __field__reason <- ST.newSTRef ""
            let
              _parse _lastId
                = do _fieldBegin <- Trans.lift
                                      (Thrift.parseFieldBegin _proxy _lastId _idMap)
                     case _fieldBegin of
                       Thrift.FieldBegin _type _id _bool -> do case _id of
                                                                 1 | _type ==
                                                                       Thrift.getStringType _proxy
                                                                     ->
                                                                     do !_val <- Trans.lift
                                                                                   (Thrift.parseText
                                                                                      _proxy)
                                                                        ST.writeSTRef
                                                                          __field__reason
                                                                          _val
                                                                 _ -> Trans.lift
                                                                        (Thrift.parseSkip _proxy
                                                                           _type
                                                                           (Prelude.Just _bool))
                                                               _parse _id
                       Thrift.FieldEnd -> do !__val__reason <- ST.readSTRef
                                                                 __field__reason
                                             Prelude.pure (TU__Exception __val__reason)
              _idMap = HashMap.fromList [("reason", 1)]
            _parse 0)

instance DeepSeq.NFData TU__Exception where
  rnf (TU__Exception __field__reason)
    = DeepSeq.rnf __field__reason `Prelude.seq` ()

instance Default.Default TU__Exception where
  def = TU__Exception ""

instance Hashable.Hashable TU__Exception where
  hashWithSalt __salt (TU__Exception _reason)
    = Hashable.hashWithSalt __salt _reason

instance Exception.Exception TU__Exception

data TU__Struct = TU__Struct{_Struct_a :: TU__Type,
                             _Struct_b :: [[TU__Type]]}
                  deriving (Prelude.Eq, Prelude.Show, Prelude.Ord)

instance Aeson.ToJSON TU__Struct where
  toJSON (TU__Struct __field__a __field__b)
    = Aeson.object
        ("a" .= __field__a : "b" .= __field__b : Prelude.mempty)

instance Thrift.ThriftStruct TU__Struct where
  buildStruct _proxy (TU__Struct __field__a __field__b)
    = Thrift.genStruct _proxy
        (Thrift.genField _proxy "a" (Thrift.getI64Type _proxy) 1 0
           (Thrift.genI64 _proxy __field__a)
           :
           Thrift.genField _proxy "b" (Thrift.getListType _proxy) 2 1
             (Thrift.genList _proxy (Thrift.getListType _proxy)
                (Thrift.genList _proxy (Thrift.getI64Type _proxy)
                   (Thrift.genI64 _proxy))
                __field__b)
             : [])
  parseStruct _proxy
    = ST.runSTT
        (do Prelude.return ()
            __field__a <- ST.newSTRef a
            __field__b <- ST.newSTRef Default.def
            let
              _parse _lastId
                = do _fieldBegin <- Trans.lift
                                      (Thrift.parseFieldBegin _proxy _lastId _idMap)
                     case _fieldBegin of
                       Thrift.FieldBegin _type _id _bool -> do case _id of
                                                                 1 | _type ==
                                                                       Thrift.getI64Type _proxy
                                                                     ->
                                                                     do !_val <- Trans.lift
                                                                                   (Thrift.parseI64
                                                                                      _proxy)
                                                                        ST.writeSTRef __field__a
                                                                          _val
                                                                 2 | _type ==
                                                                       Thrift.getListType _proxy
                                                                     ->
                                                                     do !_val <- Trans.lift
                                                                                   (Prelude.snd <$>
                                                                                      Thrift.parseList
                                                                                        _proxy
                                                                                        (Prelude.snd
                                                                                           <$>
                                                                                           Thrift.parseList
                                                                                             _proxy
                                                                                             (Thrift.parseI64
                                                                                                _proxy)))
                                                                        ST.writeSTRef __field__b
                                                                          _val
                                                                 _ -> Trans.lift
                                                                        (Thrift.parseSkip _proxy
                                                                           _type
                                                                           (Prelude.Just _bool))
                                                               _parse _id
                       Thrift.FieldEnd -> do !__val__a <- ST.readSTRef __field__a
                                             !__val__b <- ST.readSTRef __field__b
                                             Prelude.pure (TU__Struct __val__a __val__b)
              _idMap = HashMap.fromList [("a", 1), ("b", 2)]
            _parse 0)

instance DeepSeq.NFData TU__Struct where
  rnf (TU__Struct __field__a __field__b)
    = DeepSeq.rnf __field__a `Prelude.seq`
        DeepSeq.rnf __field__b `Prelude.seq` ()

instance Default.Default TU__Struct where
  def = TU__Struct a Default.def

instance Hashable.Hashable TU__Struct where
  hashWithSalt __salt (TU__Struct _a _b)
    = Hashable.hashWithSalt (Hashable.hashWithSalt __salt _a) _b

data TU__Union = TU__Union_x Int.Int8
               | TU__Union_y [Text.Text]
               | TU__Union_z (Set.Set Int.Int64)
               | TU__Union_EMPTY
                 deriving (Prelude.Eq, Prelude.Show, Prelude.Ord)

instance Aeson.ToJSON TU__Union where
  toJSON (TU__Union_x __x) = Aeson.object ["x" .= __x]
  toJSON (TU__Union_y __y) = Aeson.object ["y" .= __y]
  toJSON (TU__Union_z __z) = Aeson.object ["z" .= __z]
  toJSON TU__Union_EMPTY = Aeson.object []

instance Thrift.ThriftStruct TU__Union where
  buildStruct _proxy (TU__Union_x __x)
    = Thrift.genStruct _proxy
        [Thrift.genFieldPrim _proxy "x" (Thrift.getByteType _proxy) 1 0
           (Thrift.genBytePrim _proxy)
           __x]
  buildStruct _proxy (TU__Union_y __y)
    = Thrift.genStruct _proxy
        [Thrift.genField _proxy "y" (Thrift.getListType _proxy) 2 0
           (Thrift.genList _proxy (Thrift.getStringType _proxy)
              (Thrift.genText _proxy)
              __y)]
  buildStruct _proxy (TU__Union_z __z)
    = Thrift.genStruct _proxy
        [Thrift.genField _proxy "z" (Thrift.getSetType _proxy) 3 0
           ((Thrift.genListPrim _proxy (Thrift.getI64Type _proxy)
               (Thrift.genI64Prim _proxy)
               . Set.toList)
              __z)]
  buildStruct _proxy TU__Union_EMPTY = Thrift.genStruct _proxy []
  parseStruct _proxy
    = do _fieldBegin <- Thrift.parseFieldBegin _proxy 0 _idMap
         case _fieldBegin of
           Thrift.FieldBegin _type _id _bool -> do case _id of
                                                     1 | _type == Thrift.getByteType _proxy ->
                                                         do _val <- Thrift.parseByte _proxy
                                                            Thrift.parseStop _proxy
                                                            Prelude.return (TU__Union_x _val)
                                                     2 | _type == Thrift.getListType _proxy ->
                                                         do _val <- Prelude.snd <$>
                                                                      Thrift.parseList _proxy
                                                                        (Thrift.parseText _proxy)
                                                            Thrift.parseStop _proxy
                                                            Prelude.return (TU__Union_y _val)
                                                     3 | _type == Thrift.getSetType _proxy ->
                                                         do _val <- Set.fromList . Prelude.snd <$>
                                                                      Thrift.parseList _proxy
                                                                        (Thrift.parseI64 _proxy)
                                                            Thrift.parseStop _proxy
                                                            Prelude.return (TU__Union_z _val)
                                                     _ -> do Thrift.parseSkip _proxy _type
                                                               Prelude.Nothing
                                                             Thrift.parseStop _proxy
                                                             Prelude.return TU__Union_EMPTY
           Thrift.FieldEnd -> Prelude.return TU__Union_EMPTY
    where
      _idMap = HashMap.fromList [("x", 1), ("y", 2), ("z", 3)]

instance DeepSeq.NFData TU__Union where
  rnf (TU__Union_x __x) = DeepSeq.rnf __x
  rnf (TU__Union_y __y) = DeepSeq.rnf __y
  rnf (TU__Union_z __z) = DeepSeq.rnf __z
  rnf TU__Union_EMPTY = ()

instance Default.Default TU__Union where
  def = TU__Union_EMPTY

instance Hashable.Hashable TU__Union where
  hashWithSalt __salt (TU__Union_x _x)
    = Hashable.hashWithSalt __salt (Hashable.hashWithSalt 1 _x)
  hashWithSalt __salt (TU__Union_y _y)
    = Hashable.hashWithSalt __salt (Hashable.hashWithSalt 2 _y)
  hashWithSalt __salt (TU__Union_z _z)
    = Hashable.hashWithSalt __salt
        (Hashable.hashWithSalt 3 (Set.elems _z))
  hashWithSalt __salt TU__Union_EMPTY
    = Hashable.hashWithSalt __salt (0 :: Prelude.Int)

a :: TU__Type
a = 100

u :: TU__Union
u = TU__Union_y ["test"]