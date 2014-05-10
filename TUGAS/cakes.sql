# Dump File
#
# Database is ported from MS Access
#--------------------------------------------------------
# Program Version 3.0.148

CREATE DATABASE IF NOT EXISTS `cakes`;
USE `cakes`;

#
# Table structure for table 'kategori'
#

DROP TABLE IF EXISTS `kategori`;

CREATE TABLE `kategori` (
  `id_kotegori` VARCHAR(255) NOT NULL, 
  `nama_kategori` VARCHAR(255), 
  PRIMARY KEY (`id_kotegori`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'kategori'
#

# 0 records

#
# Table structure for table 'pesan'
#

DROP TABLE IF EXISTS `pesan`;

CREATE TABLE `pesan` (
  `id_produk` VARCHAR(255), 
  `id_pemesanan` VARCHAR(255) NOT NULL, 
  `tanggal_antar` DATETIME, 
  `jumlah` VARCHAR(255), 
  `harga` INTEGER DEFAULT 0, 
  INDEX (`id_produk`), 
  INDEX (`id_pemesanan`), 
  PRIMARY KEY (`id_pemesanan`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'pesan'
#

# 0 records

#
# Table structure for table 'produk'
#

DROP TABLE IF EXISTS `produk`;

CREATE TABLE `produk` (
  `id_produk` VARCHAR(255) NOT NULL, 
  `nama_produk` VARCHAR(255), 
  `harga` DECIMAL(19,4) DEFAULT 0, 
  `id_kategori` VARCHAR(255), 
  INDEX (`id_kategori`), 
  PRIMARY KEY (`id_produk`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'produk'
#

# 0 records

#
# Table structure for table 'transaksi'
#

DROP TABLE IF EXISTS `transaksi`;

CREATE TABLE `transaksi` (
  `id_transaksi` VARCHAR(255) NOT NULL, 
  `id_pemesanan` VARCHAR(255), 
  `total_bayar` INTEGER DEFAULT 0, 
  `nama` VARCHAR(255), 
  `alamat` LONGTEXT, 
  `no telp/hp` VARCHAR(255), 
  `id_user` VARCHAR(255), 
  INDEX (`id_pemesanan`), 
  INDEX (`id_user`), 
  PRIMARY KEY (`id_transaksi`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'transaksi'
#

# 0 records

#
# Table structure for table 'user'
#

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id_user` VARCHAR(255) NOT NULL, 
  `username` VARCHAR(255), 
  `nama` VARCHAR(255), 
  `alamat` LONGTEXT, 
  `no telp/hp` INTEGER DEFAULT 0, 
  `email` VARCHAR(255), 
  `password` VARCHAR(255), 
  PRIMARY KEY (`id_user`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'user'
#

# 0 records

