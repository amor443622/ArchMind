# ARCHMIND — النسخة المجانية الجاهزة للنشر

مساحة عمل معمارية بالذكاء الاصطناعي، بالعربية والإنجليزية، ومناسبة للجوال والكمبيوتر. تشمل مسار العمل المعماري من الـBrief إلى Presentation، ومحادثة مع OpenAI وClaude وGemini وOllama، و200 برومبت معماري، ومكتبة مرئية تعرض صفحات كتاب **Nano Banana for Architects** كاملة مع أمثلة قبل/بعد.

## ما تتضمنه هذه النسخة

- لا يوجد دفع أو شراء رصيد داخل الموقع. يحصل الحساب المفعّل على **15 رصيدًا مجانيًا يوميًا**، وتتجدد عند 00:00 UTC. صور الذكاء الاصطناعي تستهلك 5 أرصدة افتراضيًا.
- مكتبة 200 برومبت مع صورة مرجعية قبل وبعد، وإمكانية رفع صورة «قبل» وتوليد صورة «بعد» باستخدام Gemini.
- قارئ مدمج لكل صفحات الكتاب الـ44، مع نسب العمل إلى إبراهيم عبد الهادي وإظهار شرط الاستخدام غير التجاري.
- رفع صور PNG/JPEG/WebP وملفات PDF وTXT وMD وCSV وJSON للمحادثة؛ إجمالي المرفقات 6 MB لكل رسالة. قراءة PDF غير متاحة عبر Ollama.
- استوديو صور معماري داخل الموقع متصل بواجهة Krea 2 Medium/Large، مع صورة مرجعية، نسب أبعاد ومستوى إبداع، وصورة ناتجة قابلة للفتح والتنزيل. أضف `KREA_API_KEY` في أسرار الخادم لتفعيله؛ استخدام API يُحاسب على رصيد Krea الخاص بمالك الموقع. زر النتيجة داخل كل برومبت يستخدم الصورة المرجعية وKrea عند توفر المفتاح، أو Gemini كبديل.
- المكتب الفني مرتبط بالمشروع: سجل رسومات، تنسيق إنشائي/MEP/مدني، الكميات والتكلفة، ومراجعة الإصدار، مع ملاحظات محفوظة وتصدير CSV ومراجعة بالذكاء الاصطناعي.
- محادثة الذكاء الاصطناعي تتبع لغة رسالة المستخدم متعددة اللغات. واجهة الموقع متاحة بالعربية والإنجليزية.
- بيانات المشاريع والحسابات تبقى على خادم الموقع. لا تُضمّن مفاتيح API أو حسابات المستخدمين في هذه الحزمة.

**مهم:** لا توجد مشتريات أو باقات رصيد للمستخدم. مع ذلك، مزودات الذكاء الاصطناعي السحابية (ومنها Krea لتوليد الصور) تخصم من رصيد/حساب API الخاص بمالك الموقع. لا تضع المفاتيح في `index.html`.

## التشغيل على الكمبيوتر

1. ثبّت Node.js 20 أو أحدث.
2. انسخ `.env.example` إلى `.env`.
3. أضف مفتاح مزود ذكاء اصطناعي واحدًا على الأقل. لتوليد صور «بعد»، أضف `GEMINI_API_KEY`.
4. أضف `GMAIL_USER` و`GMAIL_APP_PASSWORD` حتى تصل رسالة تأكيد الحساب. استخدم كلمة مرور تطبيق Google ذات 16 حرفًا، لا كلمة مرور Gmail العادية. اجعل `GMAIL_FROM` مثل `ARCHMIND <your-address@gmail.com>`.
5. شغّل `START-ARCHMIND.bat` أو افتح الطرفية في المجلد وشغّل `npm install` ثم `npm start`.
6. افتح `http://localhost:3000` على الكمبيوتر نفسه. للوصول من هاتف أو من أي مكان، انشر الموقع أولًا على عنوان HTTPS عام.

## النشر العام عبر Render

1. ارفع ملفات هذا المجلد إلى مستودع GitHub تملكه.
2. في Render أنشئ **Blueprint** من المستودع؛ سيقرأ إعدادات `render.yaml` وينشئ خدمة Node وقرصًا دائمًا للبيانات.
3. في إعدادات الخدمة، أضف مفتاح مزود واحدًا على الأقل (`GEMINI_API_KEY` أو `OPENAI_API_KEY` أو `ANTHROPIC_API_KEY`). مفاتيح المزود سرية وتوضع في إعدادات الاستضافة فقط.
4. أضف بيانات Gmail الثلاثة: `GMAIL_USER` و`GMAIL_APP_PASSWORD` و`GMAIL_FROM`. بعد ظهور رابط Render، ضع الرابط الكامل الذي يبدأ بـ `https://` في `APP_BASE_URL` ثم أعد النشر حتى تعمل روابط تأكيد البريد.
5. بعد اكتمال النشر، استخدم رابط HTTPS الذي يقدمه Render. افتحه على الهاتف ثم اختر «إضافة إلى الشاشة الرئيسية» لتثبيته كتطبيق ويب.

يمكن تشغيل Ollama على استضافة عامة فقط إذا كان عنوانه متاحًا للخادم بأمان؛ ضع العنوان في `OLLAMA_URL` واختر نموذج رؤية عند الحاجة لرفع الصور. لا تستخدم عنوان `localhost` الخاص بجهازك في استضافة Render.

## شروط مصدر الصور والبرومبتات

الصفحات والصور المضمنة مأخوذة من **Nano Banana for Architects — Ibrahim A.I. Abdelhady (October 2025)**. الملف المصدر يسمح بالمشاركة والاستخدام غير التجاري ويمنع البيع التجاري. أبقِ إشعار النسبة والشرط المرفق في `public/pdf-examples/ATTRIBUTION.txt` عند إعادة نشر النسخة، ولا تبيع صفحات الكتاب أو عيناته.

---

# ARCHMIND — Free deployment edition

A bilingual architectural AI workspace for mobile and desktop. It includes the complete 15-stage workflow, 200 architectural prompts, prompt image comparisons, file attachments, and all 44 pages of the supplied *Nano Banana for Architects* reference.

There is no checkout or paid credit pack. Verified accounts receive 15 free credits each day (reset at 00:00 UTC); generated images cost 5 credits by default. Cloud AI use is billed by the selected AI provider to the site owner’s API account. Keep all keys in server environment settings, never in browser code.

For local text assistance, install Node.js 20+ and Ollama, then pull `qwen2.5:7b`. Copy `.env.example` to `.env`, add `KREA_API_KEY` for the image studio and a cloud language-model key only if needed, add Gmail App Password only if you want email verification, run `START-ARCHMIND.bat`, and visit `http://localhost:3000`. Krea API usage is billed to the owner's Krea API balance. In a public deployment, configure provider secrets in the host settings; visitors cannot reach Ollama running only on your PC.

For worldwide HTTPS access, deploy this folder from GitHub to Render using the included `render.yaml`. Set the AI and Gmail secrets in Render, set `APP_BASE_URL` to the assigned HTTPS address, then redeploy. A local `localhost` address is only reachable on the computer running the server.

The source book permits non-commercial sharing and prohibits commercial sale. Keep the author credit and restriction in `public/pdf-examples/ATTRIBUTION.txt` when sharing ARCHMIND.
