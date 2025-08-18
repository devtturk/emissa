#!/usr/bin/env bash
set -euo pipefail
echo "Creating issues via gh CLI..."
gh issue create --title "[EPIC] E1 — Monorepo & Temel Altyapı" --body "Parent: E1
See claude_code_plan-2.json" --label "epic,E1"
gh issue create --title "[TASK] E1-T1 — Monorepo iskeleti" --body "Parent Epic: E1
See claude_code_plan-2.json" --label "task,E1,E1-T1"
gh issue create --title "E1-T1-1 — Turborepo init ve ortak config" --body "Parent Task: E1-T1

**Acceptance Criteria**
- `pnpm i && pnpm -w build` tüm paketleri derler
- Pre-commit lint/format hatada commit’i engeller
- packages/shared içeriği web & backend tarafından import edilir

**Test Steps**
- Lint ihlaliyle commit dene → engellenmeli
- shared içine bir type ekle; web/backend’te derlenmeli" --label "todo,E1,E1-T1"
gh issue create --title "E1-T1-2 — Ortam değişkeni şablonları" --body "Parent Task: E1-T1

**Acceptance Criteria**
- Yeni geliştirici .env.example ile projeyi ayağa kaldırabilir
- .env git’e girmez
- Yerel çalışma dokümantasyonu net

**Test Steps**
- Temiz makinede kurulum yap; dev ortamı çalışmalı
- `git add .env` dene → dahil edilmemeli" --label "todo,E1,E1-T1"
gh issue create --title "[TASK] E1-T2 — CI/CD boru hattı" --body "Parent Epic: E1
See claude_code_plan-2.json" --label "task,E1,E1-T2"
gh issue create --title "E1-T2-1 — Build/Test/Lint workflows" --body "Parent Task: E1-T2

**Acceptance Criteria**
- PR açılınca CI tetiklenir
- Başarısız adım PR üzerinde görünür
- Cache ile ardışık buildler %30+ hızlı

**Test Steps**
- Bilerek lint hatasıyla PR aç → kırılmalı
- İki ardışık build süresi karşılaştır" --label "todo,E1,E1-T2"
gh issue create --title "E1-T2-2 — Backend container & staging deploy" --body "Parent Task: E1-T2

**Acceptance Criteria**
- Docker image lokal çalışır
- Main merge sonrası staging URL /healthz 200
- Rollback adımı dokümante

**Test Steps**
- Yerelde build/run ve /healthz testi
- Staging’e deploy sonrası /healthz 200 doğrula" --label "todo,E1,E1-T2"
gh issue create --title "[TASK] E1-T3 — Yerel geliştirme orkestrasyonu" --body "Parent Epic: E1
See claude_code_plan-2.json" --label "task,E1,E1-T3"
gh issue create --title "E1-T3-1 — docker-compose ile DB/Redis/MinIO" --body "Parent Task: E1-T3

**Acceptance Criteria**
- `docker compose up` sonrası tüm servisler sağlıklı
- Migrasyonlar tamamlanır
- MinIO paneli erişilebilir

**Test Steps**
- `curl /healthz` 200
- DB tabloları listelenir
- MinIO upload/download çalışır" --label "todo,E1,E1-T3"
gh issue create --title "[EPIC] E2 — Kimlik & Hesap Yönetimi" --body "Parent: E2
See claude_code_plan-2.json" --label "epic,E2"
gh issue create --title "[TASK] E2-T1 — Auth akışları" --body "Parent Epic: E2
See claude_code_plan-2.json" --label "task,E2,E2-T1"
gh issue create --title "E2-T1-1 — Signup + e-posta doğrulama" --body "Parent Task: E2-T1

**Acceptance Criteria**
- Doğrulanmamış kullanıcı korumalı sayfalara erişemez
- Zayıf şifrelere izin verilmez
- Onboarding tamamlandığında bayrak güncellenir

**Test Steps**
- Doğrulamadan korumalı route 401
- Zayıf şifre reddi" --label "todo,E2,E2-T1"
gh issue create --title "E2-T1-2 — Session yenileme ve logout" --body "Parent Task: E2-T1

**Acceptance Criteria**
- Session süresi dolunca sessiz yenileme yapılır
- Tüm cihazlardan çıkış tetiklenebilir
- Idle timeout süresinde yeniden giriş istenir

**Test Steps**
- Refresh token iptal edilip istek 401
- Global logout sonrası 401" --label "todo,E2,E2-T1"
gh issue create --title "[TASK] E2-T2 — Rol & yetkilendirme" --body "Parent Epic: E2
See claude_code_plan-2.json" --label "task,E2,E2-T2"
gh issue create --title "E2-T2-1 — RBAC guard middleware" --body "Parent Task: E2-T2

**Acceptance Criteria**
- Admin endpoint'lere sadece admin rolü erişir
- Yetkisiz erişimler 403 ve audit loglanır

**Test Steps**
- User rolüyle 403
- Admin rolüyle 200" --label "todo,E2,E2-T2"
gh issue create --title "[EPIC] E3 — Domain & Alias Servisi (E-posta)" --body "Parent: E3
See claude_code_plan-2.json" --label "epic,E3"
gh issue create --title "[TASK] E3-T1 — DNS & SES Inbound kurulumu" --body "Parent Epic: E3
See claude_code_plan-2.json" --label "task,E3,E3-T1"
gh issue create --title "E3-T1-1 — MX, SPF, DKIM, DMARC kayıtlarını ekle" --body "Parent Task: E3-T1

**Acceptance Criteria**
- SES domain verified
- DKIM geçer, SPF Pass, DMARC aligned
- mail-tester skoru ≥ 9/10

**Test Steps**
- Harici hesaptan alias domainine test mail
- SES loglarında SPF/DKIM/DMARC kontrol
- mail-tester doğrulama" --label "todo,E3,E3-T1"
gh issue create --title "E3-T1-2 — Inbound rule-set ve hedef S3/R2" --body "Parent Task: E3-T1

**Acceptance Criteria**
- Gelen e-postalar S3/R2'de prefix ile saklanır
- >25MB ek reddedilir/ parça politika dokümante

**Test Steps**
- 1MB/20MB/30MB e-posta gönder ve doğrula
- S3 metadata'da Message-Id bulunur" --label "todo,E3,E3-T1"
gh issue create --title "[TASK] E3-T2 — Alias API ve adres üretimi" --body "Parent Epic: E3
See claude_code_plan-2.json" --label "task,E3,E3-T2"
gh issue create --title "E3-T2-1 — Alias oluştur/oku/sil endpointleri" --body "Parent Task: E3-T2

**Acceptance Criteria**
- Aynı adres iki kullanıcıda oluşmaz (UNIQUE)
- Silinen alias'a mail düşmez

**Test Steps**
- Arka arkaya alias (benzersiz)
- Silinen alias'a test mail → reddedilmeli" --label "todo,E3,E3-T2"
gh issue create --title "[TASK] E3-T3 — Sağlık kontrolleri ve uyarılar" --body "Parent Epic: E3
See claude_code_plan-2.json" --label "task,E3,E3-T3"
gh issue create --title "E3-T3-1 — MX/DKIM sağlık cron'u" --body "Parent Task: E3-T3

**Acceptance Criteria**
- Kayıt değişince 5dk içinde uyarı
- Dashboard’da son doğrulama görünür

**Test Steps**
- Yanlış DKIM CNAME simüle → uyarı" --label "todo,E3,E3-T3"
gh issue create --title "[EPIC] E4 — E-posta Alım & Normalize Pipeline" --body "Parent: E4
See claude_code_plan-2.json" --label "epic,E4"
gh issue create --title "[TASK] E4-T1 — Lambda ingest" --body "Parent Epic: E4
See claude_code_plan-2.json" --label "task,E4,E4-T1"
gh issue create --title "E4-T1-1 — Raw kaydet ve metadata üret" --body "Parent Task: E4-T1

**Acceptance Criteria**
- Idempotency: aynı Message-Id ikinci kez işlenmez
- Eksik zorunlu header → karantina

**Test Steps**
- Replay → ikinci işlenmemeli
- Subject'siz → karantina" --label "todo,E4,E4-T1"
gh issue create --title "[TASK] E4-T2 — Inbound Webhook" --body "Parent Epic: E4
See claude_code_plan-2.json" --label "task,E4,E4-T2"
gh issue create --title "E4-T2-1 — İmza doğrulama ve rate limit" --body "Parent Task: E4-T2

**Acceptance Criteria**
- Yanlış imza 401
- Burst'te 429

**Test Steps**
- Yanlış imza ile istek
- 1000/30s load test" --label "todo,E4,E4-T2"
gh issue create --title "E4-T2-2 — Mesaj kaydı ve kuyruğa atma" --body "Parent Task: E4-T2

**Acceptance Criteria**
- DB hata → kuyruk yok
- job id ↔ mesaj id eşleşir

**Test Steps**
- DB arızası simülasyonu
- Başarılı durumda DB + kuyruk kayıt" --label "todo,E4,E4-T2"
gh issue create --title "[TASK] E4-T3 — MIME parse & güvenlik" --body "Parent Epic: E4
See claude_code_plan-2.json" --label "task,E4,E4-T3"
gh issue create --title "E4-T3-1 — Text/HTML çıkarımı ve sanitize" --body "Parent Task: E4-T3

**Acceptance Criteria**
- XSS render edilmez
- UTF-8 dışı doğru görünür

**Test Steps**
- XSS içeren mail test
- ISO-8859-9 görüntüleme" --label "todo,E4,E4-T3"
gh issue create --title "E4-T3-2 — Ek tarama ve karantina" --body "Parent Task: E4-T3

**Acceptance Criteria**
- Zararlı ek indirilemez
- Temiz ek indirilebilir

**Test Steps**
- EICAR dosyası ile blok kontrol" --label "todo,E4,E4-T3"
gh issue create --title "[EPIC] E5 — Mesaj Depolama, Arama & Listeleme API’leri" --body "Parent: E5
See claude_code_plan-2.json" --label "epic,E5"
gh issue create --title "[TASK] E5-T1 — Listeleme ve filtreleme" --body "Parent Epic: E5
See claude_code_plan-2.json" --label "task,E5,E5-T1"
gh issue create --title "E5-T1-1 — GET /v1/messages" --body "Parent Task: E5-T1

**Acceptance Criteria**
- 10k mesajda P95 < 300ms
- Case-insensitive arama
- TR karakter desteği

**Test Steps**
- Latency ölçümleri
- İ/ı/ş/Ş aramaları" --label "todo,E5,E5-T1"
gh issue create --title "[TASK] E5-T2 — Mesaj detayı" --body "Parent Epic: E5
See claude_code_plan-2.json" --label "task,E5,E5-T2"
gh issue create --title "E5-T2-1 — GET /v1/messages/:id" --body "Parent Task: E5-T2

**Acceptance Criteria**
- Silinmiş 404
- Başkasının 403

**Test Steps**
- 403 denemesi
- 404 denemesi" --label "todo,E5,E5-T2"
gh issue create --title "[EPIC] E6 — Sınıflandırma & Olay Çıkarma (AI-lite)" --body "Parent: E6
See claude_code_plan-2.json" --label "epic,E6"
gh issue create --title "[TASK] E6-T1 — Heuristik ve regex temelleri" --body "Parent Epic: E6
See claude_code_plan-2.json" --label "task,E6,E6-T1"
gh issue create --title "E6-T1-1 — Kural tabanlı sınıflandırma" --body "Parent Task: E6-T1

**Acceptance Criteria**
- Seed isabet ≥%80
- Low confidence → other

**Test Steps**
- 100 örnek rapor
- Sınır vakaları incele" --label "todo,E6,E6-T1"
gh issue create --title "[TASK] E6-T2 — Tarih/son-gün çıkarımı" --body "Parent Epic: E6
See claude_code_plan-2.json" --label "task,E6,E6-T2"
gh issue create --title "E6-T2-1 — Deadline parser" --body "Parent Task: E6-T2

**Acceptance Criteria**
- ±1 gün P95
- En alakalı tarihi seçer

**Test Steps**
- 'Son gün yarın 23:59'
- 'Kargo yarın çıkar'" --label "todo,E6,E6-T2"
gh issue create --title "[TASK] E6-T3 — Hafif ML sınıflandırıcı" --body "Parent Epic: E6
See claude_code_plan-2.json" --label "task,E6,E6-T3"
gh issue create --title "E6-T3-1 — Model eğitim pipeline'ı" --body "Parent Task: E6-T3

**Acceptance Criteria**
- Macro F1 ≥ 0.85
- Model versiyonu API'de

**Test Steps**
- Baseline vs ML
- Rollback senaryosu" --label "todo,E6,E6-T3"
gh issue create --title "[TASK] E6-T4 — Özetleyici (gated)" --body "Parent Epic: E6
See claude_code_plan-2.json" --label "task,E6,E6-T4"
gh issue create --title "E6-T4-1 — Uzunluk/önem eşiği + LLM" --body "Parent Task: E6-T4

**Acceptance Criteria**
- LLM çağrı oranı ≤%15
- Özet ≤ 2 cümle

**Test Steps**
- Kısa mailde çağrı yok
- Uzun+önemlide özet" --label "todo,E6,E6-T4"
gh issue create --title "[TASK] E6-T5 — Event yazımı ve idempotency" --body "Parent Epic: E6
See claude_code_plan-2.json" --label "task,E6,E6-T5"
gh issue create --title "E6-T5-1 — Event tekillik ve upsert" --body "Parent Task: E6-T5

**Acceptance Criteria**
- Dupe yazım yok
- Audit güncelleme kaydı

**Test Steps**
- İki kez işleme → tek kayıt
- Güncelleme akışı" --label "todo,E6,E6-T5"
gh issue create --title "[TASK] E6-T6 — Değerlendirme harness'i" --body "Parent Epic: E6
See claude_code_plan-2.json" --label "task,E6,E6-T6"
gh issue create --title "E6-T6-1 — Rapor ve hata analizi" --body "Parent Task: E6-T6

**Acceptance Criteria**
- Raporlar CI artifact
- Top-10 hata örnekleri

**Test Steps**
- Seed veri raporu
- Kural güncelle sonrası tekrar ölç" --label "todo,E6,E6-T6"
gh issue create --title "[EPIC] E7 — Kurallar (Mute/Önemli/Auto-Archive)" --body "Parent: E7
See claude_code_plan-2.json" --label "epic,E7"
gh issue create --title "[TASK] E7-T1 — Rule engine" --body "Parent Epic: E7
See claude_code_plan-2.json" --label "task,E7,E7-T1"
gh issue create --title "E7-T1-1 — Koşul-aksiyon & öncelik" --body "Parent Task: E7-T1

**Acceptance Criteria**
- Çakışmada en yüksek öncelik
- Audit log

**Test Steps**
- Çakışan kurallar testi
- Mute sonrası bildirim yok" --label "todo,E7,E7-T1"
gh issue create --title "[TASK] E7-T2 — UI entegrasyonu" --body "Parent Epic: E7
See claude_code_plan-2.json" --label "task,E7,E7-T2"
gh issue create --title "E7-T2-1 — Mesajdan kural oluşturma" --body "Parent Task: E7-T2

**Acceptance Criteria**
- Butona basınca kural listede
- 10sn içinde undo

**Test Steps**
- Sessize al → bildirim gelmesin
- Undo → bildirim gelsin" --label "todo,E7,E7-T2"
gh issue create --title "[EPIC] E8 — Akıllı Bildirimler" --body "Parent: E8
See claude_code_plan-2.json" --label "epic,E8"
gh issue create --title "[TASK] E8-T1 — Push token yönetimi" --body "Parent Epic: E8
See claude_code_plan-2.json" --label "task,E8,E8-T1"
gh issue create --title "E8-T1-1 — Token kayıt/yenileme" --body "Parent Task: E8-T1

**Acceptance Criteria**
- Çoklu token
- Expired token cleanup

**Test Steps**
- Token refresh
- Silinen token'a gönderim denemesi" --label "todo,E8,E8-T1"
gh issue create --title "[TASK] E8-T2 — Zamanlama ve erteleme" --body "Parent Epic: E8
See claude_code_plan-2.json" --label "task,E8,E8-T2"
gh issue create --title "E8-T2-1 — Planlayıcı işçisi" --body "Parent Task: E8-T2

**Acceptance Criteria**
- T-24h & T-2h tetikler
- Duplicate tetik yok

**Test Steps**
- Yakın due_at testi
- Çift ekleme bir kez tetikler" --label "todo,E8,E8-T2"
gh issue create --title "[TASK] E8-T3 — Sessiz saatler ve özet mod" --body "Parent Epic: E8
See claude_code_plan-2.json" --label "task,E8,E8-T3"
gh issue create --title "E8-T3-1 — Sessiz saatler" --body "Parent Task: E8-T3

**Acceptance Criteria**
- Aralıkta push yok
- Bitişte tek özet

**Test Steps**
- Aralıkta çok event → tek bildirim
- Aralık dışı normal" --label "todo,E8,E8-T3"
gh issue create --title "E8-T3-2 — Günlük özet" --body "Parent Task: E8-T3

**Acceptance Criteria**
- Tercih aktifse gönder
- Boşsa gönderilmez

**Test Steps**
- Gün sonu özet
- Boş içerikte yok" --label "todo,E8,E8-T3"
gh issue create --title "[EPIC] E9 — Maskeli Yanıt (Reply-via)" --body "Parent: E9
See claude_code_plan-2.json" --label "epic,E9"
gh issue create --title "[TASK] E9-T1 — Yanıt oluşturma" --body "Parent Epic: E9
See claude_code_plan-2.json" --label "task,E9,E9-T1"
gh issue create --title "E9-T1-1 — POST /v1/messages/:id/reply" --body "Parent Task: E9-T1

**Acceptance Criteria**
- DMARC uyumlu teslim
- UI’da durum görünür

**Test Steps**
- Karşı hesaba teslim
- Farklı kullanıcı 403" --label "todo,E9,E9-T1"
gh issue create --title "[TASK] E9-T2 — Outbound SMTP ve imzalama" --body "Parent Epic: E9
See claude_code_plan-2.json" --label "task,E9,E9-T2"
gh issue create --title "E9-T2-1 — SES gönderim ve oran sınırı" --body "Parent Task: E9-T2

**Acceptance Criteria**
- Limitte kuyruğa park
- DKIM geçer

**Test Steps**
- Yük testinde limit davranışı
- mail-tester DKIM" --label "todo,E9,E9-T2"
gh issue create --title "[TASK] E9-T3 — Bounce/Complaint/Abuse" --body "Parent Epic: E9
See claude_code_plan-2.json" --label "task,E9,E9-T3"
gh issue create --title "E9-T3-1 — SNS webhook entegrasyonu" --body "Parent Task: E9-T3

**Acceptance Criteria**
- Hard bounce sonrası tekrar yok
- Complaint artışında oran düşürme

**Test Steps**
- Bounce simülasyonu
- Complaint oranı artışı → throttling" --label "todo,E9,E9-T3"
gh issue create --title "[EPIC] E10 — Web Uygulaması (Next.js)" --body "Parent: E10
See claude_code_plan-2.json" --label "epic,E10"
gh issue create --title "[TASK] E10-T1 — Inbox ekranı" --body "Parent Epic: E10
See claude_code_plan-2.json" --label "task,E10,E10-T1"
gh issue create --title "E10-T1-1 — Liste ve filtre UI" --body "Parent Task: E10-T1

**Acceptance Criteria**
- 10k öğede akıcı scroll
- Debounce arama & filtre

**Test Steps**
- Büyük veriyle scroll
- Filtre kombinasyonları" --label "todo,E10,E10-T1"
gh issue create --title "[TASK] E10-T2 — Mesaj detay & olay kartları" --body "Parent Epic: E10
See claude_code_plan-2.json" --label "task,E10,E10-T2"
gh issue create --title "E10-T2-1 — Detay görünümü" --body "Parent Task: E10-T2

**Acceptance Criteria**
- XSS güvenliği
- Aksiyonlar geri bildirim verir

**Test Steps**
- Zararlı içerik render güvenliği
- Aksiyon API çağrıları" --label "todo,E10,E10-T2"
gh issue create --title "[EPIC] E11 — Mobil Uygulama (React Native – Expo)" --body "Parent: E11
See claude_code_plan-2.json" --label "epic,E11"
gh issue create --title "[TASK] E11-T1 — Auth ve push token" --body "Parent Epic: E11
See claude_code_plan-2.json" --label "task,E11,E11-T1"
gh issue create --title "E11-T1-1 — Login ekranı ve token gönderimi" --body "Parent Task: E11-T1

**Acceptance Criteria**
- Login sonrası token backend’de
- Logout token siler

**Test Steps**
- Login-logout döngüsü
- Test bildirimi alınır" --label "todo,E11,E11-T1"
gh issue create --title "[TASK] E11-T2 — Inbox ve detay" --body "Parent Epic: E11
See claude_code_plan-2.json" --label "task,E11,E11-T2"
gh issue create --title "E11-T2-1 — Liste/Detay navigasyonu" --body "Parent Task: E11-T2

**Acceptance Criteria**
- 60fps’e yakın scroll
- Detay 500ms altı

**Test Steps**
- Düşük cihaz simülasyonu
- Pull-to-refresh yeni mesaj" --label "todo,E11,E11-T2"
gh issue create --title "[EPIC] E12 — Tarayıcı Eklentisi (Alias Auto-Fill)" --body "Parent: E12
See claude_code_plan-2.json" --label "epic,E12"
gh issue create --title "[TASK] E12-T1 — Form algılama" --body "Parent Epic: E12
See claude_code_plan-2.json" --label "task,E12,E12-T1"
gh issue create --title "E12-T1-1 — Content script ve buton yerleşimi" --body "Parent Task: E12-T1

**Acceptance Criteria**
- Popüler sitelerde çakışma yok
- Buton alias tetikler

**Test Steps**
- Top 20 sitede manuel test
- Hata durumunda sessiz düşme" --label "todo,E12,E12-T1"
gh issue create --title "[TASK] E12-T2 — Alias API entegrasyonu" --body "Parent Epic: E12
See claude_code_plan-2.json" --label "task,E12,E12-T2"
gh issue create --title "E12-T2-1 — POST /v1/aliases çağrısı" --body "Parent Task: E12-T2

**Acceptance Criteria**
- Tekrar tık → yeni alias
- 429’da kullanıcı uyarısı

**Test Steps**
- Art arda 5 tık → 5 alias
- 429 mesajı" --label "todo,E12,E12-T2"
gh issue create --title "[EPIC] E13 — Gizlilik, İzin & Veri Hakları" --body "Parent: E13
See claude_code_plan-2.json" --label "epic,E13"
gh issue create --title "[TASK] E13-T1 — Consent yönetimi" --body "Parent Epic: E13
See claude_code_plan-2.json" --label "task,E13,E13-T1"
gh issue create --title "E13-T1-1 — Consent CRUD ve denetimi" --body "Parent Task: E13-T1

**Acceptance Criteria**
- İzin yoksa işleme yok
- Revocation anında etkili

**Test Steps**
- Consent off → 403
- Revocation sonrası veri dışı" --label "todo,E13,E13-T1"
gh issue create --title "[TASK] E13-T2 — Veri ihracı (export)" --body "Parent Epic: E13
See claude_code_plan-2.json" --label "task,E13,E13-T2"
gh issue create --title "E13-T2-1 — GET /v1/me/export" --body "Parent Task: E13-T2

**Acceptance Criteria**
- 24 saat içinde hazır
- Tek kullanımlık/süreli link

**Test Steps**
- Küçük/büyük hesap export
- Expired link başarısız" --label "todo,E13,E13-T2"
gh issue create --title "[TASK] E13-T3 — Hesap silme" --body "Parent Epic: E13
See claude_code_plan-2.json" --label "task,E13,E13-T3"
gh issue create --title "E13-T3-1 — DELETE /v1/me" --body "Parent Task: E13-T3

**Acceptance Criteria**
- Alias anında disable
- 30 gün içinde tüm veriler silinir

**Test Steps**
- Silme sonrası alias’a mail düşmez
- 30 gün sonra 404" --label "todo,E13,E13-T3"
gh issue create --title "[EPIC] E14 — Telemetri, Loglama & Sağlık" --body "Parent: E14
See claude_code_plan-2.json" --label "epic,E14"
gh issue create --title "[TASK] E14-T1 — Health-check ve readiness" --body "Parent Epic: E14
See claude_code_plan-2.json" --label "task,E14,E14-T1"
gh issue create --title "E14-T1-1 — /healthz ve /readiness" --body "Parent Task: E14-T1

**Acceptance Criteria**
- /healthz 200
- Readiness false iken trafik alınmaz

**Test Steps**
- DB kapalıyken readiness false
- K8s probe başarılı" --label "todo,E14,E14-T1"
gh issue create --title "[TASK] E14-T2 — Metrikler ve dashboard" --body "Parent Epic: E14
See claude_code_plan-2.json" --label "task,E14,E14-T2"
gh issue create --title "E14-T2-1 — Ingest süresi, bildirim P95" --body "Parent Task: E14-T2

**Acceptance Criteria**
- P95 panellerde görünür
- Eşik aşımında alarm

**Test Steps**
- Yük testi P95 artışı
- Eşik altına inince alarm sönümlenir" --label "todo,E14,E14-T2"
gh issue create --title "[EPIC] E15 — Planlama & Ücretlendirme (MVP basit)" --body "Parent: E15
See claude_code_plan-2.json" --label "epic,E15"
gh issue create --title "[TASK] E15-T1 — Feature flags" --body "Parent Epic: E15
See claude_code_plan-2.json" --label "task,E15,E15-T1"
gh issue create --title "E15-T1-1 — Flag servis ve UI gizleme" --body "Parent Task: E15-T1

**Acceptance Criteria**
- Free kullanıcı premium ekrana giremez
- Plan değişince flags anında

**Test Steps**
- Upgrade → açılır
- Downgrade → kapanır" --label "todo,E15,E15-T1"
gh issue create --title "[TASK] E15-T2 — Stripe entegrasyonu" --body "Parent Epic: E15
See claude_code_plan-2.json" --label "task,E15,E15-T2"
gh issue create --title "E15-T2-1 — Abonelik başlat/iptal" --body "Parent Task: E15-T2

**Acceptance Criteria**
- Ödeme sonrası plan=premium
- İptalde free’e düşer

**Test Steps**
- Test kart ödeme
- İptal → plan değişimi" --label "todo,E15,E15-T2"
gh issue create --title "[EPIC] E16 — SMS Alias (Premium)" --body "Parent: E16
See claude_code_plan-2.json" --label "epic,E16"
gh issue create --title "[TASK] E16-T1 — Numara envanteri" --body "Parent Epic: E16
See claude_code_plan-2.json" --label "task,E16,E16-T1"
gh issue create --title "E16-T1-1 — Numara satın alma ve havuz yönetimi" --body "Parent Task: E16-T1

**Acceptance Criteria**
- Kullanıcı başına tek aktif numara
- Boşta kalan numaralar yeniden kullanılır

**Test Steps**
- Tahsis → iptal → yeniden tahsis
- Havuz tükenince uygun hata" --label "todo,E16,E16-T1"
gh issue create --title "[TASK] E16-T2 — Inbound SMS webhook" --body "Parent Epic: E16
See claude_code_plan-2.json" --label "task,E16,E16-T2"
gh issue create --title "E16-T2-1 — Webhook doğrulama ve mesaj kaydı" --body "Parent Task: E16-T2

**Acceptance Criteria**
- Yanlış imza 401
- Bilinmeyen numara 404/karantina

**Test Steps**
- Geçersiz imza → 401
- Bilinmeyen numara → karantina" --label "todo,E16,E16-T2"
gh issue create --title "[TASK] E16-T3 — Outbound SMS" --body "Parent Epic: E16
See claude_code_plan-2.json" --label "task,E16,E16-T3"
gh issue create --title "E16-T3-1 — Gönderim ve oran kontrolü" --body "Parent Task: E16-T3

**Acceptance Criteria**
- OTP P95 < 3s
- Abuse eşiğinde gönderim durur

**Test Steps**
- Yük altında OTP latansı
- Abuse senaryosu blok" --label "todo,E16,E16-T3"
gh issue create --title "[EPIC] E17 — B2B Gizlilik-Dostu Raporlama" --body "Parent: E17
See claude_code_plan-2.json" --label "epic,E17"
gh issue create --title "[TASK] E17-T1 — Agregasyon jobları" --body "Parent Epic: E17
See claude_code_plan-2.json" --label "task,E17,E17-T1"
gh issue create --title "E17-T1-1 — Consent filtresi ile agregasyon" --body "Parent Task: E17-T1

**Acceptance Criteria**
- Consent olmayan veri dahil edilmez
- Tarih/marka bazlı rapor erişimi

**Test Steps**
- Consent off kullanıcı rapora girmez
- Örnek rapor şema doğrulama" --label "todo,E17,E17-T1"