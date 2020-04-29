
import 'dart:ffi';
import 'dart:io';
import 'package:ffi/ffi.dart';

// Use typedef for more readable type definitions below
// typedef greeting_func = Pointer<Utf8> Function(Pointer<Utf8>);

// Load the library

final DynamicLibrary thresholdsiglib = Platform.isAndroid
    ? DynamicLibrary.open("libthresholdsig.so")
    : DynamicLibrary.process();


typedef add_transaction_change_c = Pointer<Utf8> Function(Pointer<Utf8> id,Pointer<Utf8> script);
typedef add_transaction_change_dart = Pointer<Utf8> Function(Pointer<Utf8> id,Pointer<Utf8> script);

final __add_transaction_change = thresholdsiglib
    .lookup<NativeFunction<add_transaction_change_c>>("add_transaction_change")
    .asFunction<add_transaction_change_dart>();
  

String addTransactionChange(String id, String script) {
  	final _id = Utf8.toUtf8(id);
	final _script = Utf8.toUtf8(script);
  final res = __add_transaction_change(_id, _script);
  return Utf8.fromUtf8(res);
}
  

typedef add_transaction_input_c = Pointer<Utf8> Function(Pointer<Utf8> id,Pointer<Utf8> txid,Uint8 vout,Pointer<Utf8> script,Int64 amount);
typedef add_transaction_input_dart = Pointer<Utf8> Function(Pointer<Utf8> id,Pointer<Utf8> txid,int vout,Pointer<Utf8> script,int amount);

final __add_transaction_input = thresholdsiglib
    .lookup<NativeFunction<add_transaction_input_c>>("add_transaction_input")
    .asFunction<add_transaction_input_dart>();
  

String addTransactionInput(String id, String txid, int vout, String script, int amount) {
  	final _id = Utf8.toUtf8(id);
	final _txid = Utf8.toUtf8(txid);
	final _script = Utf8.toUtf8(script);
  final res = __add_transaction_input(_id, _txid, vout, _script, amount);
  return Utf8.fromUtf8(res);
}
  

typedef add_transaction_output_c = Pointer<Utf8> Function(Pointer<Utf8> id,Pointer<Utf8> script,Int64 amount);
typedef add_transaction_output_dart = Pointer<Utf8> Function(Pointer<Utf8> id,Pointer<Utf8> script,int amount);

final __add_transaction_output = thresholdsiglib
    .lookup<NativeFunction<add_transaction_output_c>>("add_transaction_output")
    .asFunction<add_transaction_output_dart>();
  

String addTransactionOutput(String id, String script, int amount) {
  	final _id = Utf8.toUtf8(id);
	final _script = Utf8.toUtf8(script);
  final res = __add_transaction_output(_id, _script, amount);
  return Utf8.fromUtf8(res);
}
  

typedef add_transaction_sig_c = Pointer<Utf8> Function(Pointer<Utf8> id,Uint8 n_input,Pointer<Utf8> pubkey,Pointer<Utf8> r,Pointer<Utf8> s);
typedef add_transaction_sig_dart = Pointer<Utf8> Function(Pointer<Utf8> id,int n_input,Pointer<Utf8> pubkey,Pointer<Utf8> r,Pointer<Utf8> s);

final __add_transaction_sig = thresholdsiglib
    .lookup<NativeFunction<add_transaction_sig_c>>("add_transaction_sig")
    .asFunction<add_transaction_sig_dart>();
  

String addTransactionSig(String id, int n_input, String pubkey, String r, String s) {
  	final _id = Utf8.toUtf8(id);
	final _pubkey = Utf8.toUtf8(pubkey);
	final _r = Utf8.toUtf8(r);
	final _s = Utf8.toUtf8(s);
  final res = __add_transaction_sig(_id, n_input, _pubkey, _r, _s);
  return Utf8.fromUtf8(res);
}
  

typedef address_to_script_c = Pointer<Utf8> Function(Pointer<Utf8> addr);
typedef address_to_script_dart = Pointer<Utf8> Function(Pointer<Utf8> addr);

final __address_to_script = thresholdsiglib
    .lookup<NativeFunction<address_to_script_c>>("address_to_script")
    .asFunction<address_to_script_dart>();
  

String addressToScript(String addr) {
  	final _addr = Utf8.toUtf8(addr);
  final res = __address_to_script(_addr);
  return Utf8.fromUtf8(res);
}
  

typedef combine_shares_c = Pointer<Utf8> Function(Pointer<Utf8> shares);
typedef combine_shares_dart = Pointer<Utf8> Function(Pointer<Utf8> shares);

final __combine_shares = thresholdsiglib
    .lookup<NativeFunction<combine_shares_c>>("combine_shares")
    .asFunction<combine_shares_dart>();
  

String combineShares(String shares) {
  	final _shares = Utf8.toUtf8(shares);
  final res = __combine_shares(_shares);
  return Utf8.fromUtf8(res);
}
  

typedef create_key_c = Pointer<Utf8> Function(Pointer<Utf8> pk,Uint8 party_num,Uint8 count,Uint8 threshold,Pointer<Utf8> p,Pointer<Utf8> q);
typedef create_key_dart = Pointer<Utf8> Function(Pointer<Utf8> pk,int party_num,int count,int threshold,Pointer<Utf8> p,Pointer<Utf8> q);

final __create_key = thresholdsiglib
    .lookup<NativeFunction<create_key_c>>("create_key")
    .asFunction<create_key_dart>();
  

String createKey(String pk, int party_num, int count, int threshold, String p, String q) {
  	final _pk = Utf8.toUtf8(pk);
	final _p = Utf8.toUtf8(p);
	final _q = Utf8.toUtf8(q);
  final res = __create_key(_pk, party_num, count, threshold, _p, _q);
  return Utf8.fromUtf8(res);
}
  

typedef create_multi_key_c = Pointer<Utf8> Function(Uint8 ordinal,Pointer<Utf8> secret,Uint8 count,Uint8 threshold);
typedef create_multi_key_dart = Pointer<Utf8> Function(int ordinal,Pointer<Utf8> secret,int count,int threshold);

final __create_multi_key = thresholdsiglib
    .lookup<NativeFunction<create_multi_key_c>>("create_multi_key")
    .asFunction<create_multi_key_dart>();
  

String createMultiKey(int ordinal, String secret, int count, int threshold) {
  	final _secret = Utf8.toUtf8(secret);
  final res = __create_multi_key(ordinal, _secret, count, threshold);
  return Utf8.fromUtf8(res);
}
  

typedef create_multi_sign_c = Pointer<Utf8> Function(Pointer<Utf8> share_key,Uint8 party_num,Pointer<Utf8> signers,Uint8 threshold,Pointer<Utf8> message_hash);
typedef create_multi_sign_dart = Pointer<Utf8> Function(Pointer<Utf8> share_key,int party_num,Pointer<Utf8> signers,int threshold,Pointer<Utf8> message_hash);

final __create_multi_sign = thresholdsiglib
    .lookup<NativeFunction<create_multi_sign_c>>("create_multi_sign")
    .asFunction<create_multi_sign_dart>();
  

String createMultiSign(String share_key, int party_num, String signers, int threshold, String message_hash) {
  	final _share_key = Utf8.toUtf8(share_key);
	final _signers = Utf8.toUtf8(signers);
	final _message_hash = Utf8.toUtf8(message_hash);
  final res = __create_multi_sign(_share_key, party_num, _signers, threshold, _message_hash);
  return Utf8.fromUtf8(res);
}
  

typedef create_party_key_c = Pointer<Utf8> Function(Pointer<Utf8> secret,Pointer<Utf8> p,Pointer<Utf8> q,Uint8 index);
typedef create_party_key_dart = Pointer<Utf8> Function(Pointer<Utf8> secret,Pointer<Utf8> p,Pointer<Utf8> q,int index);

final __create_party_key = thresholdsiglib
    .lookup<NativeFunction<create_party_key_c>>("create_party_key")
    .asFunction<create_party_key_dart>();
  

String createPartyKey(String secret, String p, String q, int index) {
  	final _secret = Utf8.toUtf8(secret);
	final _p = Utf8.toUtf8(p);
	final _q = Utf8.toUtf8(q);
  final res = __create_party_key(_secret, _p, _q, index);
  return Utf8.fromUtf8(res);
}
  

typedef create_sign_c = Pointer<Utf8> Function(Pointer<Utf8> share_key,Uint8 party_num,Pointer<Utf8> vss,Pointer<Utf8> signers,Uint8 count,Uint8 threshold,Pointer<Utf8> eks,Pointer<Utf8> p,Pointer<Utf8> q,Pointer<Utf8> message_hash);
typedef create_sign_dart = Pointer<Utf8> Function(Pointer<Utf8> share_key,int party_num,Pointer<Utf8> vss,Pointer<Utf8> signers,int count,int threshold,Pointer<Utf8> eks,Pointer<Utf8> p,Pointer<Utf8> q,Pointer<Utf8> message_hash);

final __create_sign = thresholdsiglib
    .lookup<NativeFunction<create_sign_c>>("create_sign")
    .asFunction<create_sign_dart>();
  

String createSign(String share_key, int party_num, String vss, String signers, int count, int threshold, String eks, String p, String q, String message_hash) {
  	final _share_key = Utf8.toUtf8(share_key);
	final _vss = Utf8.toUtf8(vss);
	final _signers = Utf8.toUtf8(signers);
	final _eks = Utf8.toUtf8(eks);
	final _p = Utf8.toUtf8(p);
	final _q = Utf8.toUtf8(q);
	final _message_hash = Utf8.toUtf8(message_hash);
  final res = __create_sign(_share_key, party_num, _vss, _signers, count, threshold, _eks, _p, _q, _message_hash);
  return Utf8.fromUtf8(res);
}
  

typedef create_transaction_c = Pointer<Utf8> Function();
typedef create_transaction_dart = Pointer<Utf8> Function();

final __create_transaction = thresholdsiglib
    .lookup<NativeFunction<create_transaction_c>>("create_transaction")
    .asFunction<create_transaction_dart>();
  

String createTransaction() {
  
  final res = __create_transaction();
  return Utf8.fromUtf8(res);
}
  

typedef derive_key_c = Pointer<Utf8> Function(Pointer<Utf8> phrase,Pointer<Utf8> path);
typedef derive_key_dart = Pointer<Utf8> Function(Pointer<Utf8> phrase,Pointer<Utf8> path);

final __derive_key = thresholdsiglib
    .lookup<NativeFunction<derive_key_c>>("derive_key")
    .asFunction<derive_key_dart>();
  

String deriveKey(String phrase, String path) {
  	final _phrase = Utf8.toUtf8(phrase);
	final _path = Utf8.toUtf8(path);
  final res = __derive_key(_phrase, _path);
  return Utf8.fromUtf8(res);
}
  

typedef destroy_key_c = Pointer<Utf8> Function(Pointer<Utf8> key);
typedef destroy_key_dart = Pointer<Utf8> Function(Pointer<Utf8> key);

final __destroy_key = thresholdsiglib
    .lookup<NativeFunction<destroy_key_c>>("destroy_key")
    .asFunction<destroy_key_dart>();
  

String destroyKey(String key) {
  	final _key = Utf8.toUtf8(key);
  final res = __destroy_key(_key);
  return Utf8.fromUtf8(res);
}
  

typedef destroy_multi_key_c = Pointer<Utf8> Function(Pointer<Utf8> key);
typedef destroy_multi_key_dart = Pointer<Utf8> Function(Pointer<Utf8> key);

final __destroy_multi_key = thresholdsiglib
    .lookup<NativeFunction<destroy_multi_key_c>>("destroy_multi_key")
    .asFunction<destroy_multi_key_dart>();
  

String destroyMultiKey(String key) {
  	final _key = Utf8.toUtf8(key);
  final res = __destroy_multi_key(_key);
  return Utf8.fromUtf8(res);
}
  

typedef destroy_multi_sign_c = Pointer<Utf8> Function(Pointer<Utf8> key);
typedef destroy_multi_sign_dart = Pointer<Utf8> Function(Pointer<Utf8> key);

final __destroy_multi_sign = thresholdsiglib
    .lookup<NativeFunction<destroy_multi_sign_c>>("destroy_multi_sign")
    .asFunction<destroy_multi_sign_dart>();
  

String destroyMultiSign(String key) {
  	final _key = Utf8.toUtf8(key);
  final res = __destroy_multi_sign(_key);
  return Utf8.fromUtf8(res);
}
  

typedef destroy_sign_c = Pointer<Utf8> Function(Pointer<Utf8> key);
typedef destroy_sign_dart = Pointer<Utf8> Function(Pointer<Utf8> key);

final __destroy_sign = thresholdsiglib
    .lookup<NativeFunction<destroy_sign_c>>("destroy_sign")
    .asFunction<destroy_sign_dart>();
  

String destroySign(String key) {
  	final _key = Utf8.toUtf8(key);
  final res = __destroy_sign(_key);
  return Utf8.fromUtf8(res);
}
  

typedef destroy_transaction_c = Pointer<Utf8> Function(Pointer<Utf8> id);
typedef destroy_transaction_dart = Pointer<Utf8> Function(Pointer<Utf8> id);

final __destroy_transaction = thresholdsiglib
    .lookup<NativeFunction<destroy_transaction_c>>("destroy_transaction")
    .asFunction<destroy_transaction_dart>();
  

String destroyTransaction(String id) {
  	final _id = Utf8.toUtf8(id);
  final res = __destroy_transaction(_id);
  return Utf8.fromUtf8(res);
}
  

typedef get_delta_and_sigma_c = Pointer<Utf8> Function(Pointer<Utf8> key,Pointer<Utf8> alpha,Pointer<Utf8> beta,Pointer<Utf8> miu,Pointer<Utf8> ni);
typedef get_delta_and_sigma_dart = Pointer<Utf8> Function(Pointer<Utf8> key,Pointer<Utf8> alpha,Pointer<Utf8> beta,Pointer<Utf8> miu,Pointer<Utf8> ni);

final __get_delta_and_sigma = thresholdsiglib
    .lookup<NativeFunction<get_delta_and_sigma_c>>("get_delta_and_sigma")
    .asFunction<get_delta_and_sigma_dart>();
  

String getDeltaAndSigma(String key, String alpha, String beta, String miu, String ni) {
  	final _key = Utf8.toUtf8(key);
	final _alpha = Utf8.toUtf8(alpha);
	final _beta = Utf8.toUtf8(beta);
	final _miu = Utf8.toUtf8(miu);
	final _ni = Utf8.toUtf8(ni);
  final res = __get_delta_and_sigma(_key, _alpha, _beta, _miu, _ni);
  return Utf8.fromUtf8(res);
}
  

typedef get_encryption_key_c = Pointer<Utf8> Function(Pointer<Utf8> p,Pointer<Utf8> q);
typedef get_encryption_key_dart = Pointer<Utf8> Function(Pointer<Utf8> p,Pointer<Utf8> q);

final __get_encryption_key = thresholdsiglib
    .lookup<NativeFunction<get_encryption_key_c>>("get_encryption_key")
    .asFunction<get_encryption_key_dart>();
  

String getEncryptionKey(String p, String q) {
  	final _p = Utf8.toUtf8(p);
	final _q = Utf8.toUtf8(q);
  final res = __get_encryption_key(_p, _q);
  return Utf8.fromUtf8(res);
}
  

typedef get_group_pubkey_c = Pointer<Utf8> Function(Pointer<Utf8> points);
typedef get_group_pubkey_dart = Pointer<Utf8> Function(Pointer<Utf8> points);

final __get_group_pubkey = thresholdsiglib
    .lookup<NativeFunction<get_group_pubkey_c>>("get_group_pubkey")
    .asFunction<get_group_pubkey_dart>();
  

String getGroupPubkey(String points) {
  	final _points = Utf8.toUtf8(points);
  final res = __get_group_pubkey(_points);
  return Utf8.fromUtf8(res);
}
  

typedef get_local_sig_c = Pointer<Utf8> Function(Pointer<Utf8> key,Pointer<Utf8> g_gamma_i,Pointer<Utf8> delta_inv,Pointer<Utf8> b_proof,Pointer<Utf8> decommit,Pointer<Utf8> bc1,Pointer<Utf8> sigma_i,Pointer<Utf8> y,Pointer<Utf8> message_str);
typedef get_local_sig_dart = Pointer<Utf8> Function(Pointer<Utf8> key,Pointer<Utf8> g_gamma_i,Pointer<Utf8> delta_inv,Pointer<Utf8> b_proof,Pointer<Utf8> decommit,Pointer<Utf8> bc1,Pointer<Utf8> sigma_i,Pointer<Utf8> y,Pointer<Utf8> message_str);

final __get_local_sig = thresholdsiglib
    .lookup<NativeFunction<get_local_sig_c>>("get_local_sig")
    .asFunction<get_local_sig_dart>();
  

String getLocalSig(String key, String g_gamma_i, String delta_inv, String b_proof, String decommit, String bc1, String sigma_i, String y, String message_str) {
  	final _key = Utf8.toUtf8(key);
	final _g_gamma_i = Utf8.toUtf8(g_gamma_i);
	final _delta_inv = Utf8.toUtf8(delta_inv);
	final _b_proof = Utf8.toUtf8(b_proof);
	final _decommit = Utf8.toUtf8(decommit);
	final _bc1 = Utf8.toUtf8(bc1);
	final _sigma_i = Utf8.toUtf8(sigma_i);
	final _y = Utf8.toUtf8(y);
	final _message_str = Utf8.toUtf8(message_str);
  final res = __get_local_sig(_key, _g_gamma_i, _delta_inv, _b_proof, _decommit, _bc1, _sigma_i, _y, _message_str);
  return Utf8.fromUtf8(res);
}
  

typedef get_message_b_c = Pointer<Utf8> Function(Pointer<Utf8> g,Pointer<Utf8> paillier_key,Pointer<Utf8> m_a);
typedef get_message_b_dart = Pointer<Utf8> Function(Pointer<Utf8> g,Pointer<Utf8> paillier_key,Pointer<Utf8> m_a);

final __get_message_b = thresholdsiglib
    .lookup<NativeFunction<get_message_b_c>>("get_message_b")
    .asFunction<get_message_b_dart>();
  

String getMessageB(String g, String paillier_key, String m_a) {
  	final _g = Utf8.toUtf8(g);
	final _paillier_key = Utf8.toUtf8(paillier_key);
	final _m_a = Utf8.toUtf8(m_a);
  final res = __get_message_b(_g, _paillier_key, _m_a);
  return Utf8.fromUtf8(res);
}
  

typedef get_message_sig_c = Pointer<Utf8> Function(Pointer<Utf8> message,Pointer<Utf8> private_key);
typedef get_message_sig_dart = Pointer<Utf8> Function(Pointer<Utf8> message,Pointer<Utf8> private_key);

final __get_message_sig = thresholdsiglib
    .lookup<NativeFunction<get_message_sig_c>>("get_message_sig")
    .asFunction<get_message_sig_dart>();
  

String getMessageSig(String message, String private_key) {
  	final _message = Utf8.toUtf8(message);
	final _private_key = Utf8.toUtf8(private_key);
  final res = __get_message_sig(_message, _private_key);
  return Utf8.fromUtf8(res);
}
  

typedef get_num_c = Pointer<Utf8> Function(Pointer<Utf8> num);
typedef get_num_dart = Pointer<Utf8> Function(Pointer<Utf8> num);

final __get_num = thresholdsiglib
    .lookup<NativeFunction<get_num_c>>("get_num")
    .asFunction<get_num_dart>();
  

String getNum(String num) {
  	final _num = Utf8.toUtf8(num);
  final res = __get_num(_num);
  return Utf8.fromUtf8(res);
}
  

typedef get_party_shares_c = Pointer<Utf8> Function(Pointer<Utf8> secret,Uint8 index,Pointer<Utf8> params,Pointer<Utf8> decom,Pointer<Utf8> bc);
typedef get_party_shares_dart = Pointer<Utf8> Function(Pointer<Utf8> secret,int index,Pointer<Utf8> params,Pointer<Utf8> decom,Pointer<Utf8> bc);

final __get_party_shares = thresholdsiglib
    .lookup<NativeFunction<get_party_shares_c>>("get_party_shares")
    .asFunction<get_party_shares_dart>();
  

String getPartyShares(String secret, int index, String params, String decom, String bc) {
  	final _secret = Utf8.toUtf8(secret);
	final _params = Utf8.toUtf8(params);
	final _decom = Utf8.toUtf8(decom);
	final _bc = Utf8.toUtf8(bc);
  final res = __get_party_shares(_secret, index, _params, _decom, _bc);
  return Utf8.fromUtf8(res);
}
  

typedef get_public_key_c = Pointer<Utf8> Function(Pointer<Utf8> privkey);
typedef get_public_key_dart = Pointer<Utf8> Function(Pointer<Utf8> privkey);

final __get_public_key = thresholdsiglib
    .lookup<NativeFunction<get_public_key_c>>("get_public_key")
    .asFunction<get_public_key_dart>();
  

String getPublicKey(String privkey) {
  	final _privkey = Utf8.toUtf8(privkey);
  final res = __get_public_key(_privkey);
  return Utf8.fromUtf8(res);
}
  

typedef get_public_point_c = Pointer<Utf8> Function(Pointer<Utf8> pubkey);
typedef get_public_point_dart = Pointer<Utf8> Function(Pointer<Utf8> pubkey);

final __get_public_point = thresholdsiglib
    .lookup<NativeFunction<get_public_point_c>>("get_public_point")
    .asFunction<get_public_point_dart>();
  

String getPublicPoint(String pubkey) {
  	final _pubkey = Utf8.toUtf8(pubkey);
  final res = __get_public_point(_pubkey);
  return Utf8.fromUtf8(res);
}
  

typedef get_random_key_pair_c = Pointer<Utf8> Function();
typedef get_random_key_pair_dart = Pointer<Utf8> Function();

final __get_random_key_pair = thresholdsiglib
    .lookup<NativeFunction<get_random_key_pair_c>>("get_random_key_pair")
    .asFunction<get_random_key_pair_dart>();
  

String getRandomKeyPair() {
  
  final res = __get_random_key_pair();
  return Utf8.fromUtf8(res);
}
  

typedef get_seed_c = Pointer<Utf8> Function();
typedef get_seed_dart = Pointer<Utf8> Function();

final __get_seed = thresholdsiglib
    .lookup<NativeFunction<get_seed_c>>("get_seed")
    .asFunction<get_seed_dart>();
  

String getSeed() {
  
  final res = __get_seed();
  return Utf8.fromUtf8(res);
}
  

typedef get_shared_secret_c = Pointer<Utf8> Function(Pointer<Utf8> privkey,Pointer<Utf8> pubkey);
typedef get_shared_secret_dart = Pointer<Utf8> Function(Pointer<Utf8> privkey,Pointer<Utf8> pubkey);

final __get_shared_secret = thresholdsiglib
    .lookup<NativeFunction<get_shared_secret_c>>("get_shared_secret")
    .asFunction<get_shared_secret_dart>();
  

String getSharedSecret(String privkey, String pubkey) {
  	final _privkey = Utf8.toUtf8(privkey);
	final _pubkey = Utf8.toUtf8(pubkey);
  final res = __get_shared_secret(_privkey, _pubkey);
  return Utf8.fromUtf8(res);
}
  

typedef get_shares_c = Pointer<Utf8> Function(Pointer<Utf8> seed,Uint8 count,Uint8 threshold);
typedef get_shares_dart = Pointer<Utf8> Function(Pointer<Utf8> seed,int count,int threshold);

final __get_shares = thresholdsiglib
    .lookup<NativeFunction<get_shares_c>>("get_shares")
    .asFunction<get_shares_dart>();
  

String getShares(String seed, int count, int threshold) {
  	final _seed = Utf8.toUtf8(seed);
  final res = __get_shares(_seed, count, threshold);
  return Utf8.fromUtf8(res);
}
  

typedef get_transaction_fee_c = Pointer<Utf8> Function(Pointer<Utf8> id);
typedef get_transaction_fee_dart = Pointer<Utf8> Function(Pointer<Utf8> id);

final __get_transaction_fee = thresholdsiglib
    .lookup<NativeFunction<get_transaction_fee_c>>("get_transaction_fee")
    .asFunction<get_transaction_fee_dart>();
  

String getTransactionFee(String id) {
  	final _id = Utf8.toUtf8(id);
  final res = __get_transaction_fee(_id);
  return Utf8.fromUtf8(res);
}
  

typedef get_transaction_sighash_c = Pointer<Utf8> Function(Pointer<Utf8> id);
typedef get_transaction_sighash_dart = Pointer<Utf8> Function(Pointer<Utf8> id);

final __get_transaction_sighash = thresholdsiglib
    .lookup<NativeFunction<get_transaction_sighash_c>>("get_transaction_sighash")
    .asFunction<get_transaction_sighash_dart>();
  

String getTransactionSighash(String id) {
  	final _id = Utf8.toUtf8(id);
  final res = __get_transaction_sighash(_id);
  return Utf8.fromUtf8(res);
}
  

typedef get_xpub_c = Pointer<Utf8> Function(Pointer<Utf8> phrase);
typedef get_xpub_dart = Pointer<Utf8> Function(Pointer<Utf8> phrase);

final __get_xpub = thresholdsiglib
    .lookup<NativeFunction<get_xpub_c>>("get_xpub")
    .asFunction<get_xpub_dart>();
  

String getXpub(String phrase) {
  	final _phrase = Utf8.toUtf8(phrase);
  final res = __get_xpub(_phrase);
  return Utf8.fromUtf8(res);
}
  

typedef hex2str_c = Pointer<Utf8> Function(Pointer<Utf8> hex_str);
typedef hex2str_dart = Pointer<Utf8> Function(Pointer<Utf8> hex_str);

final __hex2str = thresholdsiglib
    .lookup<NativeFunction<hex2str_c>>("hex2str")
    .asFunction<hex2str_dart>();
  

String hex2str(String hex_str) {
  	final _hex_str = Utf8.toUtf8(hex_str);
  final res = __hex2str(_hex_str);
  return Utf8.fromUtf8(res);
}
  

typedef key_handle_round1_c = Pointer<Utf8> Function(Pointer<Utf8> key,Pointer<Utf8> data);
typedef key_handle_round1_dart = Pointer<Utf8> Function(Pointer<Utf8> key,Pointer<Utf8> data);

final __key_handle_round1 = thresholdsiglib
    .lookup<NativeFunction<key_handle_round1_c>>("key_handle_round1")
    .asFunction<key_handle_round1_dart>();
  

String keyHandleRound1(String key, String data) {
  	final _key = Utf8.toUtf8(key);
	final _data = Utf8.toUtf8(data);
  final res = __key_handle_round1(_key, _data);
  return Utf8.fromUtf8(res);
}
  

typedef key_handle_round2_c = Pointer<Utf8> Function(Pointer<Utf8> key,Pointer<Utf8> data1,Pointer<Utf8> data2);
typedef key_handle_round2_dart = Pointer<Utf8> Function(Pointer<Utf8> key,Pointer<Utf8> data1,Pointer<Utf8> data2);

final __key_handle_round2 = thresholdsiglib
    .lookup<NativeFunction<key_handle_round2_c>>("key_handle_round2")
    .asFunction<key_handle_round2_dart>();
  

String keyHandleRound2(String key, String data1, String data2) {
  	final _key = Utf8.toUtf8(key);
	final _data1 = Utf8.toUtf8(data1);
	final _data2 = Utf8.toUtf8(data2);
  final res = __key_handle_round2(_key, _data1, _data2);
  return Utf8.fromUtf8(res);
}
  

typedef key_handle_round3_c = Pointer<Utf8> Function(Pointer<Utf8> key,Pointer<Utf8> data);
typedef key_handle_round3_dart = Pointer<Utf8> Function(Pointer<Utf8> key,Pointer<Utf8> data);

final __key_handle_round3 = thresholdsiglib
    .lookup<NativeFunction<key_handle_round3_c>>("key_handle_round3")
    .asFunction<key_handle_round3_dart>();
  

String keyHandleRound3(String key, String data) {
  	final _key = Utf8.toUtf8(key);
	final _data = Utf8.toUtf8(data);
  final res = __key_handle_round3(_key, _data);
  return Utf8.fromUtf8(res);
}
  

typedef multi_key_handle_round_c = Pointer<Utf8> Function(Pointer<Utf8> key,Uint8 round,Pointer<Utf8> data);
typedef multi_key_handle_round_dart = Pointer<Utf8> Function(Pointer<Utf8> key,int round,Pointer<Utf8> data);

final __multi_key_handle_round = thresholdsiglib
    .lookup<NativeFunction<multi_key_handle_round_c>>("multi_key_handle_round")
    .asFunction<multi_key_handle_round_dart>();
  

String multiKeyHandleRound(String key, int round, String data) {
  	final _key = Utf8.toUtf8(key);
	final _data = Utf8.toUtf8(data);
  final res = __multi_key_handle_round(_key, round, _data);
  return Utf8.fromUtf8(res);
}
  

typedef multi_sign_handle_round_c = Pointer<Utf8> Function(Pointer<Utf8> key,Uint8 round,Pointer<Utf8> data);
typedef multi_sign_handle_round_dart = Pointer<Utf8> Function(Pointer<Utf8> key,int round,Pointer<Utf8> data);

final __multi_sign_handle_round = thresholdsiglib
    .lookup<NativeFunction<multi_sign_handle_round_c>>("multi_sign_handle_round")
    .asFunction<multi_sign_handle_round_dart>();
  

String multiSignHandleRound(String key, int round, String data) {
  	final _key = Utf8.toUtf8(key);
	final _data = Utf8.toUtf8(data);
  final res = __multi_sign_handle_round(_key, round, _data);
  return Utf8.fromUtf8(res);
}
  

typedef party_verify_vss_c = Pointer<Utf8> Function(Uint8 index,Pointer<Utf8> params,Pointer<Utf8> y_vec,Pointer<Utf8> party_shares,Pointer<Utf8> vss_scheme);
typedef party_verify_vss_dart = Pointer<Utf8> Function(int index,Pointer<Utf8> params,Pointer<Utf8> y_vec,Pointer<Utf8> party_shares,Pointer<Utf8> vss_scheme);

final __party_verify_vss = thresholdsiglib
    .lookup<NativeFunction<party_verify_vss_c>>("party_verify_vss")
    .asFunction<party_verify_vss_dart>();
  

String partyVerifyVss(int index, String params, String y_vec, String party_shares, String vss_scheme) {
  	final _params = Utf8.toUtf8(params);
	final _y_vec = Utf8.toUtf8(y_vec);
	final _party_shares = Utf8.toUtf8(party_shares);
	final _vss_scheme = Utf8.toUtf8(vss_scheme);
  final res = __party_verify_vss(index, _params, _y_vec, _party_shares, _vss_scheme);
  return Utf8.fromUtf8(res);
}
  

typedef reconstruct_c = Pointer<Utf8> Function(Pointer<Utf8> indices,Pointer<Utf8> shares);
typedef reconstruct_dart = Pointer<Utf8> Function(Pointer<Utf8> indices,Pointer<Utf8> shares);

final __reconstruct = thresholdsiglib
    .lookup<NativeFunction<reconstruct_c>>("reconstruct")
    .asFunction<reconstruct_dart>();
  

String reconstruct(String indices, String shares) {
  	final _indices = Utf8.toUtf8(indices);
	final _shares = Utf8.toUtf8(shares);
  final res = __reconstruct(_indices, _shares);
  return Utf8.fromUtf8(res);
}
  

typedef reconstruct_delta_c = Pointer<Utf8> Function(Pointer<Utf8> delta);
typedef reconstruct_delta_dart = Pointer<Utf8> Function(Pointer<Utf8> delta);

final __reconstruct_delta = thresholdsiglib
    .lookup<NativeFunction<reconstruct_delta_c>>("reconstruct_delta")
    .asFunction<reconstruct_delta_dart>();
  

String reconstructDelta(String delta) {
  	final _delta = Utf8.toUtf8(delta);
  final res = __reconstruct_delta(_delta);
  return Utf8.fromUtf8(res);
}
  

typedef set_transaction_feerate_c = Pointer<Utf8> Function(Pointer<Utf8> id,Uint16 fee);
typedef set_transaction_feerate_dart = Pointer<Utf8> Function(Pointer<Utf8> id,int fee);

final __set_transaction_feerate = thresholdsiglib
    .lookup<NativeFunction<set_transaction_feerate_c>>("set_transaction_feerate")
    .asFunction<set_transaction_feerate_dart>();
  

String setTransactionFeerate(String id, int fee) {
  	final _id = Utf8.toUtf8(id);
  final res = __set_transaction_feerate(_id, fee);
  return Utf8.fromUtf8(res);
}
  

typedef sha256_c = Pointer<Utf8> Function(Pointer<Utf8> message_hex);
typedef sha256_dart = Pointer<Utf8> Function(Pointer<Utf8> message_hex);

final __sha256 = thresholdsiglib
    .lookup<NativeFunction<sha256_c>>("sha256")
    .asFunction<sha256_dart>();
  

String sha256(String message_hex) {
  	final _message_hex = Utf8.toUtf8(message_hex);
  final res = __sha256(_message_hex);
  return Utf8.fromUtf8(res);
}
  

typedef sign_data_c = Pointer<Utf8> Function(Pointer<Utf8> data);
typedef sign_data_dart = Pointer<Utf8> Function(Pointer<Utf8> data);

final __sign_data = thresholdsiglib
    .lookup<NativeFunction<sign_data_c>>("sign_data")
    .asFunction<sign_data_dart>();
  

String signData(String data) {
  	final _data = Utf8.toUtf8(data);
  final res = __sign_data(_data);
  return Utf8.fromUtf8(res);
}
  

typedef sign_handle_round_c = Pointer<Utf8> Function(Pointer<Utf8> key,Uint8 round,Pointer<Utf8> data);
typedef sign_handle_round_dart = Pointer<Utf8> Function(Pointer<Utf8> key,int round,Pointer<Utf8> data);

final __sign_handle_round = thresholdsiglib
    .lookup<NativeFunction<sign_handle_round_c>>("sign_handle_round")
    .asFunction<sign_handle_round_dart>();
  

String signHandleRound(String key, int round, String data) {
  	final _key = Utf8.toUtf8(key);
	final _data = Utf8.toUtf8(data);
  final res = __sign_handle_round(_key, round, _data);
  return Utf8.fromUtf8(res);
}
  

typedef str2hex_c = Pointer<Utf8> Function(Pointer<Utf8> str);
typedef str2hex_dart = Pointer<Utf8> Function(Pointer<Utf8> str);

final __str2hex = thresholdsiglib
    .lookup<NativeFunction<str2hex_c>>("str2hex")
    .asFunction<str2hex_dart>();
  

String str2hex(String str) {
  	final _str = Utf8.toUtf8(str);
  final res = __str2hex(_str);
  return Utf8.fromUtf8(res);
}
  

typedef sum_point_c = Pointer<Utf8> Function(Pointer<Utf8> y);
typedef sum_point_dart = Pointer<Utf8> Function(Pointer<Utf8> y);

final __sum_point = thresholdsiglib
    .lookup<NativeFunction<sum_point_c>>("sum_point")
    .asFunction<sum_point_dart>();
  

String sumPoint(String y) {
  	final _y = Utf8.toUtf8(y);
  final res = __sum_point(_y);
  return Utf8.fromUtf8(res);
}
  

typedef sum_scalar_c = Pointer<Utf8> Function(Pointer<Utf8> y);
typedef sum_scalar_dart = Pointer<Utf8> Function(Pointer<Utf8> y);

final __sum_scalar = thresholdsiglib
    .lookup<NativeFunction<sum_scalar_c>>("sum_scalar")
    .asFunction<sum_scalar_dart>();
  

String sumScalar(String y) {
  	final _y = Utf8.toUtf8(y);
  final res = __sum_scalar(_y);
  return Utf8.fromUtf8(res);
}
  

typedef transaction_to_json_c = Pointer<Utf8> Function(Pointer<Utf8> id);
typedef transaction_to_json_dart = Pointer<Utf8> Function(Pointer<Utf8> id);

final __transaction_to_json = thresholdsiglib
    .lookup<NativeFunction<transaction_to_json_c>>("transaction_to_json")
    .asFunction<transaction_to_json_dart>();
  

String transactionToJson(String id) {
  	final _id = Utf8.toUtf8(id);
  final res = __transaction_to_json(_id);
  return Utf8.fromUtf8(res);
}
  

typedef update_commitments_to_xi_c = Pointer<Utf8> Function(Pointer<Utf8> com,Pointer<Utf8> vss_scheme,Uint8 index,Pointer<Utf8> s);
typedef update_commitments_to_xi_dart = Pointer<Utf8> Function(Pointer<Utf8> com,Pointer<Utf8> vss_scheme,int index,Pointer<Utf8> s);

final __update_commitments_to_xi = thresholdsiglib
    .lookup<NativeFunction<update_commitments_to_xi_c>>("update_commitments_to_xi")
    .asFunction<update_commitments_to_xi_dart>();
  

String updateCommitmentsToXi(String com, String vss_scheme, int index, String s) {
  	final _com = Utf8.toUtf8(com);
	final _vss_scheme = Utf8.toUtf8(vss_scheme);
	final _s = Utf8.toUtf8(s);
  final res = __update_commitments_to_xi(_com, _vss_scheme, index, _s);
  return Utf8.fromUtf8(res);
}
  

typedef verify_dlog_proofs_c = Pointer<Utf8> Function(Pointer<Utf8> params,Pointer<Utf8> dlog_proof,Pointer<Utf8> y_vec);
typedef verify_dlog_proofs_dart = Pointer<Utf8> Function(Pointer<Utf8> params,Pointer<Utf8> dlog_proof,Pointer<Utf8> y_vec);

final __verify_dlog_proofs = thresholdsiglib
    .lookup<NativeFunction<verify_dlog_proofs_c>>("verify_dlog_proofs")
    .asFunction<verify_dlog_proofs_dart>();
  

String verifyDlogProofs(String params, String dlog_proof, String y_vec) {
  	final _params = Utf8.toUtf8(params);
	final _dlog_proof = Utf8.toUtf8(dlog_proof);
	final _y_vec = Utf8.toUtf8(y_vec);
  final res = __verify_dlog_proofs(_params, _dlog_proof, _y_vec);
  return Utf8.fromUtf8(res);
}
  

typedef verify_proofs_get_alpha_c = Pointer<Utf8> Function(Pointer<Utf8> p,Pointer<Utf8> q,Pointer<Utf8> k_i,Pointer<Utf8> m_b);
typedef verify_proofs_get_alpha_dart = Pointer<Utf8> Function(Pointer<Utf8> p,Pointer<Utf8> q,Pointer<Utf8> k_i,Pointer<Utf8> m_b);

final __verify_proofs_get_alpha = thresholdsiglib
    .lookup<NativeFunction<verify_proofs_get_alpha_c>>("verify_proofs_get_alpha")
    .asFunction<verify_proofs_get_alpha_dart>();
  

String verifyProofsGetAlpha(String p, String q, String k_i, String m_b) {
  	final _p = Utf8.toUtf8(p);
	final _q = Utf8.toUtf8(q);
	final _k_i = Utf8.toUtf8(k_i);
	final _m_b = Utf8.toUtf8(m_b);
  final res = __verify_proofs_get_alpha(_p, _q, _k_i, _m_b);
  return Utf8.fromUtf8(res);
}
  

typedef verify_sig_c = Pointer<Utf8> Function(Pointer<Utf8> message_hash,Pointer<Utf8> pubkey,Pointer<Utf8> r,Pointer<Utf8> s);
typedef verify_sig_dart = Pointer<Utf8> Function(Pointer<Utf8> message_hash,Pointer<Utf8> pubkey,Pointer<Utf8> r,Pointer<Utf8> s);

final __verify_sig = thresholdsiglib
    .lookup<NativeFunction<verify_sig_c>>("verify_sig")
    .asFunction<verify_sig_dart>();
  

String verifySig(String message_hash, String pubkey, String r, String s) {
  	final _message_hash = Utf8.toUtf8(message_hash);
	final _pubkey = Utf8.toUtf8(pubkey);
	final _r = Utf8.toUtf8(r);
	final _s = Utf8.toUtf8(s);
  final res = __verify_sig(_message_hash, _pubkey, _r, _s);
  return Utf8.fromUtf8(res);
}
  