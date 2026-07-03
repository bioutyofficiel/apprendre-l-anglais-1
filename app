<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
<meta name="apple-mobile-web-app-title" content="Skyward English">
<meta name="theme-color" content="#070C16">
<title>Skyward English Pro — Formation Anglais A1→B2 + Agent d'escale</title>
<style>
:root{
  --bg:#070C16; --panel:#101A2C; --board:#04070E;
  --amber:#FFB020; --ink:#EDF2FA; --muted:#8FA0B8; --line:#22304a;
  --ok:#2FBF71; --bad:#E4574C; --blue:#4DA3FF; --gold:#FFD700;
  --radius:16px;
}
*{margin:0;padding:0;box-sizing:border-box;-webkit-tap-highlight-color:transparent}
html,body{height:100%}
body{background:var(--bg);color:var(--ink);font-family:-apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,sans-serif;font-size:16px;line-height:1.5;padding-bottom:env(safe-area-inset-bottom);overscroll-behavior-y:none}
#app{max-width:560px;margin:0 auto;min-height:100vh;display:flex;flex-direction:column}
.board{background:var(--board);border-bottom:1px solid var(--line);padding:calc(14px + env(safe-area-inset-top)) 18px 14px;position:sticky;top:0;z-index:20}
.board .row1{display:flex;justify-content:space-between;align-items:center;gap:10px}
.brand{font-family:ui-monospace,"SF Mono",Menlo,monospace;font-size:14px;letter-spacing:.2em;color:var(--amber);font-weight:700;white-space:nowrap}
.brand small{display:block;font-size:9px;letter-spacing:.3em;color:var(--muted);font-weight:400;margin-top:2px}
.stats{display:flex;gap:8px}
.chip{font-family:ui-monospace,"SF Mono",Menlo,monospace;font-size:12px;background:#0B1322;border:1px solid var(--line);border-radius:8px;padding:5px 9px;color:var(--ink);white-space:nowrap}
.chip b{color:var(--amber)}
.screen{flex:1;padding:18px;animation:fade .25s ease}
@keyframes fade{from{opacity:0;transform:translateY(6px)}to{opacity:1;transform:none}}
@media (prefers-reduced-motion:reduce){.screen{animation:none}}
h1.title{font-size:22px;font-weight:800;margin-bottom:4px}
p.sub{color:var(--muted);font-size:14px;margin-bottom:16px}
.dep{background:var(--board);border:1px solid var(--line);border-radius:var(--radius);overflow:hidden;margin-bottom:16px}
.dep .head{display:grid;grid-template-columns:52px 1fr 64px 84px;gap:8px;padding:10px 14px;font-family:ui-monospace,"SF Mono",Menlo,monospace;font-size:10px;letter-spacing:.18em;color:var(--muted);border-bottom:1px solid var(--line)}
.dep .flight{display:grid;grid-template-columns:52px 1fr 64px 84px;gap:8px;align-items:center;padding:14px;border-bottom:1px solid #101a2c;cursor:pointer;transition:background .15s}
.dep .flight:last-child{border-bottom:none}
.dep .flight:active{background:#0c1526}
.dep .code{font-family:ui-monospace,"SF Mono",Menlo,monospace;font-size:15px;font-weight:700;color:var(--amber)}
.dep .dest{font-size:14px;font-weight:600;min-width:0}
.dep .dest small{display:block;font-weight:400;color:var(--muted);font-size:11.5px}
.dep .pct{font-family:ui-monospace,"SF Mono",Menlo,monospace;font-size:13px;text-align:right}
.dep .status{font-family:ui-monospace,"SF Mono",Menlo,monospace;font-size:9.5px;letter-spacing:.06em;text-align:center;padding:4px 2px;border-radius:6px}
.st-open{background:#132b1e;color:var(--ok)}
.st-boarding{background:#2b230e;color:var(--amber)}
.st-done{background:#0e2233;color:var(--blue)}
.st-cert{background:#2b230e;color:var(--gold)}
.bigbtn{display:flex;align-items:center;gap:12px;width:100%;background:var(--panel);border:1px solid var(--line);border-radius:14px;padding:14px 16px;color:var(--ink);font-size:15px;font-weight:600;margin-bottom:10px;cursor:pointer;text-align:left}
.bigbtn:active{background:#16233c}
.bigbtn .ico{font-size:22px}
.bigbtn small{display:block;font-weight:400;color:var(--muted);font-size:12.5px}
.pass{background:var(--panel);border:1px solid var(--line);border-radius:var(--radius);margin-bottom:14px;overflow:hidden;cursor:pointer;position:relative;transition:transform .12s}
.pass:active{transform:scale(.985)}
.pass .top{display:flex;justify-content:space-between;align-items:center;padding:12px 16px;border-bottom:1px dashed var(--line)}
.pass .top::before,.pass .top::after{content:"";position:absolute;width:16px;height:16px;border-radius:50%;background:var(--bg);border:1px solid var(--line);top:38px}
.pass .top::before{left:-9px}
.pass .top::after{right:-9px}
.pass .gate{font-family:ui-monospace,"SF Mono",Menlo,monospace;font-size:11px;letter-spacing:.12em;color:var(--amber)}
.pass .score{font-family:ui-monospace,"SF Mono",Menlo,monospace;font-size:11px;color:var(--muted)}
.pass .body{padding:14px 16px}
.pass h3{font-size:16px;font-weight:700}
.pass p{font-size:13px;color:var(--muted);margin-top:2px}
.pass .bar{height:5px;background:#0b1322;border-radius:3px;margin-top:12px;overflow:hidden}
.pass .bar i{display:block;height:100%;background:var(--ok);border-radius:3px;transition:width .4s}
.pass .tick{position:absolute;right:14px;bottom:12px;color:var(--ok);font-size:13px;font-weight:700}
.pass.exam{border-color:var(--amber)}
.pass.exam .bar i{background:var(--amber)}
.back{display:inline-flex;align-items:center;gap:6px;color:var(--muted);font-size:14px;background:none;border:none;margin-bottom:14px;cursor:pointer;padding:6px 0}
.qbar{display:flex;align-items:center;gap:12px;margin-bottom:20px}
.qbar .quit{background:none;border:none;color:var(--muted);font-size:22px;line-height:1;cursor:pointer;padding:4px}
.qtrack{flex:1;height:10px;background:#0b1322;border-radius:6px;overflow:hidden}
.qtrack i{display:block;height:100%;background:linear-gradient(90deg,var(--amber),#ffcf60);border-radius:6px;transition:width .35s}
.qcount{font-family:ui-monospace,"SF Mono",Menlo,monospace;font-size:12px;color:var(--muted)}
.qtype{font-size:11.5px;letter-spacing:.14em;color:var(--amber);font-weight:700;text-transform:uppercase;margin-bottom:8px;font-family:ui-monospace,"SF Mono",Menlo,monospace}
.qtext{font-size:19px;font-weight:700;margin-bottom:20px;line-height:1.4}
.qtext .gapline{display:inline-block;min-width:64px;border-bottom:2px solid var(--amber);margin:0 2px}
.opt{width:100%;text-align:left;background:var(--panel);border:2px solid var(--line);color:var(--ink);border-radius:14px;padding:14px 16px;font-size:16px;margin-bottom:10px;cursor:pointer;transition:border-color .12s,background .12s}
.opt:active{background:#16233c}
.opt.sel{border-color:var(--blue);background:#12233c}
.opt.good{border-color:var(--ok);background:#10281c}
.opt.badd{border-color:var(--bad);background:#2b1512}
.speakbtn{display:flex;align-items:center;justify-content:center;gap:10px;width:100%;background:#12233c;border:2px solid var(--blue);color:var(--ink);border-radius:14px;padding:16px;font-size:16px;font-weight:600;margin-bottom:12px;cursor:pointer}
.speakbtn:active{background:#173055}
.speakbtn.slow{padding:10px;font-size:14px;border-width:1px;margin-bottom:18px}
.buildzone{min-height:58px;border-bottom:2px solid var(--line);display:flex;flex-wrap:wrap;gap:8px;padding:8px 2px 12px;margin-bottom:18px}
.wordbank{display:flex;flex-wrap:wrap;gap:8px}
.word{background:var(--panel);border:1px solid var(--line);border-radius:10px;padding:9px 13px;font-size:16px;color:var(--ink);cursor:pointer}
.word:active{background:#16233c}
.buildzone .word{background:#12233c;border-color:var(--blue)}
.wordbank .word.used{opacity:.25;pointer-events:none}
.foot{position:sticky;bottom:0;padding:14px 0 calc(6px + env(safe-area-inset-bottom));background:linear-gradient(transparent,var(--bg) 30%)}
.btn{width:100%;border:none;border-radius:14px;padding:16px;font-size:16px;font-weight:800;cursor:pointer;letter-spacing:.02em}
.btn-amber{background:var(--amber);color:#1a1200}
.btn-amber:disabled{background:#3a3320;color:#7a6c40}
.btn-ok{background:var(--ok);color:#052012}
.btn-bad{background:var(--bad);color:#2b0500}
.btn-ghost{background:var(--panel);color:var(--ink);border:1px solid var(--line)}
.fb{border-radius:14px;padding:13px 15px;margin-bottom:12px;font-size:14.5px;animation:fade .2s ease}
.fb.good{background:#10281c;border:1px solid var(--ok)}
.fb.badd{background:#2b1512;border:1px solid var(--bad)}
.fb b{display:block;font-size:15px;margin-bottom:3px}
.fb .exp{color:#cdd8e6}
.result{text-align:center;padding-top:30px}
.result .big{font-size:58px;margin-bottom:8px}
.result h2{font-size:24px;font-weight:800;margin-bottom:6px}
.result p{color:var(--muted);margin-bottom:24px}
.medals{display:flex;gap:10px;justify-content:center;margin-bottom:28px}
.medal{background:var(--panel);border:1px solid var(--line);border-radius:14px;padding:14px 18px;min-width:90px}
.medal .v{font-family:ui-monospace,"SF Mono",Menlo,monospace;font-size:20px;font-weight:700;color:var(--amber)}
.medal .l{font-size:11px;color:var(--muted);letter-spacing:.08em;text-transform:uppercase;margin-top:2px}
.cert{background:linear-gradient(135deg,#1a1503,#2b230e);border:1px solid var(--gold);border-radius:16px;padding:18px;margin:0 0 18px;text-align:center}
.cert .t{font-family:ui-monospace,"SF Mono",Menlo,monospace;color:var(--gold);letter-spacing:.2em;font-size:11px}
.cert h3{font-size:18px;margin:6px 0 2px}
.fiche h2{font-size:18px;font-weight:800;margin:22px 0 10px;color:var(--amber)}
.fiche .intro{background:var(--panel);border:1px solid var(--line);border-radius:14px;padding:14px 16px;font-size:14.5px;color:#cdd8e6}
.vrow{display:flex;justify-content:space-between;align-items:center;gap:10px;background:var(--panel);border:1px solid var(--line);border-radius:12px;padding:11px 14px;margin-bottom:8px}
.vrow .en{font-weight:700;font-size:15px}
.vrow .fr{color:var(--muted);font-size:13.5px;text-align:right;flex:1}
.sp{background:none;border:none;font-size:17px;cursor:pointer;color:var(--blue);padding:2px 4px;flex-shrink:0}
.phr{background:var(--panel);border-left:3px solid var(--amber);border-radius:0 12px 12px 0;padding:11px 14px;margin-bottom:8px}
.phr .en{font-weight:700;font-size:15px;display:flex;justify-content:space-between;gap:8px;align-items:flex-start}
.phr .fr{color:var(--muted);font-size:13.5px;margin-top:2px}
.note{background:#12233c;border:1px solid var(--blue);border-radius:12px;padding:12px 14px;font-size:13.5px;margin:10px 0;color:#cdd8e6}
</style>
</head>
<body>
<div id="app">
  <header class="board">
    <div class="row1">
      <div class="brand">SKYWARD ✈ ENGLISH PRO<small>FORMATION TERMINAL — CECRL</small></div>
      <div class="stats">
        <span class="chip">🔥 <b id="stStreak">0</b></span>
        <span class="chip">⭐ <b id="stXP">0</b></span>
      </div>
    </div>
  </header>
  <main id="view" class="screen"></main>
</div>
<script>
/* ===== Stockage sécurisé ===== */
const mem={};
const store={
  get(k,d){try{const v=localStorage.getItem(k);return v===null?(k in mem?mem[k]:d):JSON.parse(v)}catch(e){return k in mem?mem[k]:d}},
  set(k,v){mem[k]=v;try{localStorage.setItem(k,JSON.stringify(v))}catch(e){}}
};
/* ===== Audio anglais (TTS) ===== */
let voiceEN=null;
/* Choix intelligent de la meilleure voix anglaise disponible sur l'appareil.
   Les voix "Premium" / "Enhanced" d'iOS (à télécharger dans Réglages) sont quasi humaines. */
function scoreVoice(v){
  if(!/^en/i.test(v.lang))return -1;
  let s=0;
  if(/premium/i.test(v.name))s+=100;
  if(/enhanced|améliorée/i.test(v.name))s+=60;
  if(/siri/i.test(v.name))s+=55;
  if(/natural|neural/i.test(v.name))s+=50;
  if(/Ava|Zoe|Zoé|Evan|Nathan|Joelle|Noelle|Allison|Susan|Tom/i.test(v.name))s+=25; // familles premium US
  if(/Serena|Kate|Oliver|Jamie|Stephanie|Martha|Arthur/i.test(v.name))s+=25;        // familles premium GB
  if(/Samantha|Daniel|Karen|Moira|Tessa|Google UK|Google US/i.test(v.name))s+=10;   // bonnes voix par défaut
  if(/en[-_](US|GB)/i.test(v.lang))s+=5;
  if(/compact/i.test(v.name))s-=30; // voix bas de gamme
  return s;
}
function pickVoice(){try{
  const vs=speechSynthesis.getVoices();
  if(!vs.length)return;
  voiceEN=vs.slice().sort((a,b)=>scoreVoice(b)-scoreVoice(a))[0];
  if(voiceEN&&scoreVoice(voiceEN)<0)voiceEN=null;
}catch(e){}}
if('speechSynthesis' in window){pickVoice();speechSynthesis.onvoiceschanged=pickVoice;}
function speak(t,r){try{
  speechSynthesis.cancel();
  const u=new SpeechSynthesisUtterance(t);
  if(voiceEN){u.voice=voiceEN;u.lang=voiceEN.lang;}else{u.lang='en-GB';}
  u.rate=r||0.92;u.pitch=1;
  speechSynthesis.speak(u);
}catch(e){}}
function currentVoiceName(){return voiceEN?voiceEN.name:"voix système";}
function isPremiumVoice(){return voiceEN&&/premium|enhanced|siri|natural|neural|améliorée/i.test(voiceEN.name);}
/* délégation clic pour tous les boutons audio */
document.addEventListener('click',e=>{
  const el=e.target.closest('[data-say]');
  if(el){e.stopPropagation();speak(el.getAttribute('data-say'),parseFloat(el.getAttribute('data-rate')||'0.92'));}
});
function esc(s){return String(s).replace(/&/g,"&amp;").replace(/</g,"&lt;").replace(/>/g,"&gt;").replace(/"/g,"&quot;")}
function att(s){return esc(s)}
function shuffle(a){a=a.slice();for(let i=a.length-1;i>0;i--){const j=Math.floor(Math.random()*(i+1));[a[i],a[j]]=[a[j],a[i]]}return a}

/* =====================================================================
   PROGRAMME DE FORMATION — aligné CECRL (A1→B2) + référentiel Agent d'escale
   Types de questions : qcm | gap | build | listen
===================================================================== */
const DATA=[
{ id:"F0", code:"SK000", name:"Fondamentaux — Grand débutant", sub:"Alphabet, nombres, premiers mots : la base de la base", lessons:[
 { id:"f0l1", title:"L'alphabet & la prononciation", sub:"Épeler, lire, les sons pièges du français",
  fiche:{ intro:"Tout commence ici : savoir prononcer les 26 lettres pour épeler ton nom, comprendre quand on t'épelle un mot, et connaître les sons anglais qui n'existent pas en français. Écoute chaque lettre 🔊 et répète à voix haute.",
   secs:[
    {h:"Les lettres pièges pour un francophone", v:[
     ["A","se dit « éï » — pas « a » !"],
     ["E","se dit « i » — c'est le piège n°1"],
     ["I","se dit « aï » — le piège n°2 (E et I s'inversent par rapport au français)"],
     ["G","se dit « dji »"],
     ["J","se dit « djéï » (G et J se confondent souvent)"],
     ["H","se dit « éïtch »"],
     ["R","se dit « ar »"],
     ["W","se dit « double-you »"],
     ["Y","se dit « waï »"]
    ]},
    {h:"Les sons qui n'existent pas en français", v:[
     ["TH — think, thank you","langue entre les dents, comme un « s » soufflé"],
     ["TH — this, the, mother","version douce, comme un « z » soufflé"],
     ["H aspiré — hello, hotel, have","on souffle vraiment le H (hello ≠ ello !)"],
     ["-ING — morning, boarding","le « g » final ne se prononce presque pas"]
    ]},
    {h:"Épeler dans la vie réelle", v:[
     ["How do you spell it?","Comment ça s'écrit ?"],
     ["Can you spell your name, please?","Pouvez-vous épeler votre nom ?"],
     ["It's Y-O-H-A-N.","Ça s'écrit Y-O-H-A-N."],
     ["Double L","deux L (ex : HELLO : H-E-double L-O)"]
    ]}],
   phr:[
    ["My name is Yohan: Y, O, H, A, N.","Je m'appelle Yohan : Y-O-H-A-N."],
    ["How do you spell that?","Comment ça s'épelle ?"],
    ["Sorry, can you repeat that letter?","Pardon, pouvez-vous répéter cette lettre ?"]]},
  q:[
   {t:"listen", say:"E", q:"Quelle lettre entends-tu ?", opts:["I","E","A","Y"], a:1, x:"« i » prononcé = la lettre E. Le grand piège : E se dit « i » et I se dit « aï »."},
   {t:"listen", say:"I", q:"Quelle lettre entends-tu ?", opts:["E","A","I","Y"], a:2, x:"« aï » = la lettre I."},
   {t:"listen", say:"A", q:"Quelle lettre entends-tu ?", opts:["A","E","I","R"], a:0, x:"« éï » = la lettre A."},
   {t:"listen", say:"G", q:"Quelle lettre entends-tu ?", opts:["J","G","D","B"], a:1, x:"« dji » = G. « djéï » = J. Les deux se confondent facilement !"},
   {t:"qcm", q:"Comment se prononce la lettre « W » ?", opts:["wé","double-vé","double-you","vou"], a:2, x:"W = « double-you » (double U)."},
   {t:"qcm", q:"« How do you spell it? » signifie :", opts:["Comment ça se prononce ?","Comment ça s'écrit ?","Qu'est-ce que ça veut dire ?","Comment tu t'appelles ?"], a:1, x:"To spell = épeler. Question essentielle pour noter un nom."},
   {t:"listen", say:"H, E, double L, O", q:"Quel mot vient d'être épelé ?", opts:["HELLO","HELP","HALLO","HOTEL"], a:0, x:"H-E-double L-O = HELLO. « Double L » = deux L."},
   {t:"qcm", q:"Dans « thank you », le TH se prononce :", opts:["comme un T français","comme un F","langue entre les dents","comme un D"], a:2, x:"Le TH anglais : bout de langue entre les dents. Ni « t » ni « z » français."},
   {t:"listen", say:"J, F, K", q:"Quel code d'aéroport vient d'être épelé ?", opts:["GFK","JFK","JEK","CFK"], a:1, x:"JFK = l'aéroport de New York. J = « djéï »."},
   {t:"build", q:"Remets la question dans l'ordre : « Pouvez-vous épeler votre nom ? »", words:["Can","you","spell","your","name"], extra:["write","say"], x:"Can you spell your name? — au comptoir, tu la poseras 50 fois par jour !"}
  ]},
 { id:"f0l2", title:"Les nombres 0 → 100", sub:"Compter, comprendre un prix, un numéro",
  fiche:{ intro:"Les nombres sont partout : prix, horaires, numéros de vol, de siège, de porte. Objectif : les reconnaître à l'oreille instantanément. Le piège absolu : 13/30, 14/40, 15/50... écoute-les plusieurs fois !",
   secs:[
    {h:"0 à 12 (à connaître par cœur)", v:[
     ["zero, one, two, three","0, 1, 2, 3"],
     ["four, five, six, seven","4, 5, 6, 7"],
     ["eight, nine, ten","8, 9, 10"],
     ["eleven, twelve","11, 12 (irréguliers, comme en français)"]
    ]},
    {h:"13-19 (-teen) vs 20-90 (-ty)", v:[
     ["thirteen (13) — thirty (30)","-TEEN : accent fort à la FIN — -TY : fin courte"],
     ["fourteen (14) — forty (40)","forty s'écrit sans U !"],
     ["fifteen (15) — fifty (50)","five devient FIF-"],
     ["sixteen (16) — sixty (60)","6 : régulier"],
     ["seventeen (17) — seventy (70)","7 : régulier"],
     ["eighteen (18) — eighty (80)","un seul T : eighteen"],
     ["nineteen (19) — ninety (90)","9 : régulier"]
    ]},
    {h:"Composer les grands nombres", v:[
     ["twenty-one, twenty-two... (21, 22...)","dizaine + tiret + unité"],
     ["a hundred (100) — a hundred and five (105)","cent — cent cinq"],
     ["Flight 305: three-oh-five","au téléphone/aéroport, 0 se dit souvent « oh »"],
     ["Seat 42C: forty-two C","numéro de siège = nombre + lettre"]
    ]}],
   phr:[
    ["It's twenty-five euros, please.","Ça fait 25 euros, s'il vous plaît."],
    ["Your seat number is thirty-one A.","Votre siège est le 31A."],
    ["Flight number four-seven-nine to Rome.","Vol numéro 479 à destination de Rome."]]},
  q:[
   {t:"listen", say:"thirteen", q:"Quel nombre entends-tu ?", opts:["30","13","3","33"], a:1, x:"ThirTEEN : accent sur la fin = 13. Thirty (accent au début) = 30."},
   {t:"listen", say:"forty", q:"Quel nombre entends-tu ?", opts:["14","40","4","44"], a:1, x:"FORty : fin courte = 40."},
   {t:"listen", say:"fifteen", q:"Quel nombre entends-tu ?", opts:["50","5","15","55"], a:2, x:"FifTEEN = 15."},
   {t:"qcm", q:"Comment s'écrit « 12 » ?", opts:["twoteen","twelve","twenty","tweleven"], a:1, x:"Twelve = 12. Eleven = 11. Les deux irréguliers."},
   {t:"qcm", q:"Comment s'écrit « 80 » ?", opts:["eightty","eighteen","eighty","aughty"], a:2, x:"Eighty (un seul t). Eighteen = 18."},
   {t:"build", q:"Écrivez « 21 » en toutes lettres :", words:["twenty","one"], extra:["two","ten"], x:"Twenty-one : dizaine + unité."},
   {t:"listen", say:"That will be sixty-seven euros, please", q:"Quel est le prix ?", opts:["77 €","67 €","76 €","17 €"], a:1, x:"Sixty-seven = 67."},
   {t:"listen", say:"Your seat is fourteen B", q:"Quel est le siège ?", opts:["40B","14B","4B","44B"], a:1, x:"FourTEEN = 14. L'erreur 14/40 fait embarquer les passagers au mauvais rang !"},
   {t:"listen", say:"Flight three oh five is now boarding", q:"Quel est le numéro du vol ?", opts:["350","305","35","3005"], a:1, x:"Three-oh-five : le 0 se dit « oh » → 305."},
   {t:"qcm", q:"« a hundred » :", opts:["1 000","100","10","1 000 000"], a:1, x:"A hundred = 100. A thousand = 1 000."}
  ]},
 { id:"f0l3", title:"Jours, mois & dates", sub:"Le calendrier complet + les moments de la journée",
  fiche:{ intro:"Lire un billet d'avion, donner un rendez-vous, comprendre « your flight is on Monday, June 2nd » : le calendrier anglais complet. Règle d'or : jours et mois prennent TOUJOURS une majuscule.",
   secs:[
    {h:"Les 7 jours", v:[
     ["Monday, Tuesday, Wednesday","lundi, mardi, mercredi (Wednesday se prononce « WENZ-day »)"],
     ["Thursday, Friday","jeudi, vendredi"],
     ["Saturday, Sunday — the weekend","samedi, dimanche — le week-end"],
     ["today, tomorrow, yesterday","aujourd'hui, demain, hier"]
    ]},
    {h:"Les 12 mois", v:[
     ["January, February, March","janvier, février, mars"],
     ["April, May, June","avril, mai, juin"],
     ["July, August, September","juillet, août, septembre"],
     ["October, November, December","octobre, novembre, décembre"],
     ["spring, summer, autumn (fall US), winter","printemps, été, automne, hiver"]
    ]},
    {h:"Dire une date", v:[
     ["June 2nd = June the second","le 2 juin (on utilise les ordinaux !)"],
     ["1st first — 2nd second — 3rd third","1er, 2e, 3e : irréguliers"],
     ["4th fourth, 5th fifth... 21st twenty-first","ensuite : nombre + th"],
     ["in the morning / afternoon / evening — at night","le matin / l'après-midi / le soir — la nuit"]
    ]}],
   phr:[
    ["Your flight is on Monday, June the second.","Votre vol est le lundi 2 juin."],
    ["The office is closed on Sundays.","Le bureau est fermé le dimanche."],
    ["See you tomorrow morning!","À demain matin !"]]},
  q:[
   {t:"qcm", q:"« Thursday », c'est :", opts:["mardi","mercredi","jeudi","samedi"], a:2, x:"Thursday = jeudi. Tuesday = mardi : le duo qui se confond."},
   {t:"listen", say:"Tuesday", q:"Quel jour entends-tu ?", opts:["Thursday (jeudi)","Tuesday (mardi)","Today","Sunday (dimanche)"], a:1, x:"TUES-day = mardi. THURS-day = jeudi."},
   {t:"qcm", q:"« tomorrow » :", opts:["hier","ce matin","demain","tôt"], a:2, x:"Tomorrow = demain. Yesterday = hier. Today = aujourd'hui."},
   {t:"qcm", q:"Quel mois est « August » ?", opts:["avril","août","automne","octobre"], a:1, x:"August = août."},
   {t:"listen", say:"Your flight leaves on Friday, March the third", q:"Quand part le vol ?", opts:["vendredi 3 mars","jeudi 13 mars","vendredi 30 mars","mardi 3 mai"], a:0, x:"Friday = vendredi, March the third = le 3 mars."},
   {t:"qcm", q:"« 1er » (premier) se dit :", opts:["oneth","first","primary","one"], a:1, x:"1st = first, 2nd = second, 3rd = third."},
   {t:"gap", q:"Jours et mois s'écrivent :", opts:["toujours avec une majuscule","sans majuscule","en majuscules complètes","comme en français"], a:0, x:"Monday, June : majuscule obligatoire, contrairement au français."},
   {t:"build", q:"Traduisez : « À demain matin ! »", words:["See","you","tomorrow","morning"], extra:["at","the"], x:"See you tomorrow morning : pas de préposition avant tomorrow."},
   {t:"listen", say:"The shop is closed on Sundays and open from Monday to Saturday", q:"Quand le magasin est-il fermé ?", opts:["le samedi","le dimanche","le lundi","le week-end entier"], a:1, x:"Closed on Sundays = fermé le dimanche. Open Monday to Saturday = ouvert du lundi au samedi."},
   {t:"qcm", q:"« autumn » (ou « fall » aux USA) :", opts:["l'été","l'automne","l'aube","la chute d'eau"], a:1, x:"Autumn (GB) = fall (US) = automne."}
  ]},
 { id:"f0l4", title:"Objets & mots du quotidien", sub:"A / AN, le pluriel, les couleurs, les premiers noms",
  fiche:{ intro:"Tes 40 premiers mots concrets + deux règles fondamentales : l'article A/AN (un, une) et le pluriel en -s. Avec ça, tu peux déjà nommer le monde autour de toi.",
   secs:[
    {h:"A ou AN ? Le pluriel", v:[
     ["a ticket, a phone, a bag","A + son de consonne = un, une"],
     ["an apple, an airport, an hour","AN + son de VOYELLE (an hour : le h est muet !)"],
     ["one bag → two bags — a key → keys","pluriel : + s"],
     ["a man → men, a woman → women, a child → children","pluriels irréguliers essentiels"],
     ["the = le, la, les","l'article défini, invariable"]
    ]},
    {h:"Les couleurs", v:[
     ["white, black, grey","blanc, noir, gris"],
     ["red, blue, green, yellow","rouge, bleu, vert, jaune"],
     ["orange, pink, purple, brown","orange, rose, violet, marron"],
     ["a black suitcase","l'adjectif se place AVANT le nom et ne s'accorde jamais"]
    ]},
    {h:"40 mots pour démarrer", v:[
     ["a phone, keys, money, a wallet, glasses","un téléphone, des clés, de l'argent, un portefeuille, des lunettes"],
     ["a house, a door, a window, a table, a chair","une maison, une porte, une fenêtre, une table, une chaise"],
     ["water, coffee, tea, bread, milk","de l'eau, du café, du thé, du pain, du lait"],
     ["a man, a woman, a child, people","un homme, une femme, un enfant, des gens"],
     ["a car, a bag, a book, a computer, clothes","une voiture, un sac, un livre, un ordinateur, des vêtements"],
     ["big / small — new / old — good / bad","grand / petit — neuf / vieux — bon / mauvais"]
    ]}],
   phr:[
    ["I have a black suitcase and a red bag.","J'ai une valise noire et un sac rouge."],
    ["Where are my keys?","Où sont mes clés ?"],
    ["A bottle of water, please.","Une bouteille d'eau, s'il vous plaît."]]},
  q:[
   {t:"gap", q:"___ apple, please.", opts:["A","An","Two","The a"], a:1, x:"AN + son de voyelle : an apple, an airport."},
   {t:"gap", q:"___ ticket to London, please.", opts:["An","A","Some","Any"], a:1, x:"A + consonne : a ticket."},
   {t:"qcm", q:"Le pluriel de « child » :", opts:["childs","childes","children","childrens"], a:2, x:"Child → children. Irrégulier à connaître absolument."},
   {t:"qcm", q:"Le pluriel de « man » :", opts:["mans","men","mens","man"], a:1, x:"Man → men, woman → women."},
   {t:"listen", say:"a black suitcase", q:"Qu'entends-tu ?", opts:["une valise bleue","une valise noire","un sac noir","une valise cassée"], a:1, x:"Black = noir, suitcase = valise."},
   {t:"qcm", q:"« purple » :", opts:["rose","violet","marron","gris"], a:1, x:"Purple = violet. Pink = rose. Brown = marron."},
   {t:"build", q:"Traduisez : « Une bouteille d'eau, s'il vous plaît »", words:["A","bottle","of","water","please"], extra:["an","some"], x:"A bottle of water. Of = de (contenant + of + contenu)."},
   {t:"qcm", q:"Où se place l'adjectif ? « une voiture rouge » =", opts:["a car red","a red car","red a car","a car of red"], a:1, x:"Adjectif AVANT le nom, toujours : a red car, a big house."},
   {t:"listen", say:"Where are my keys and my wallet?", q:"Que cherche la personne ?", opts:["Ses clés et son portefeuille","Son téléphone et ses clés","Ses lunettes","Son sac et son manteau"], a:0, x:"Keys = clés, wallet = portefeuille."},
   {t:"gap", q:"I need ___ hour to finish.", opts:["a","an","one of","the an"], a:1, x:"An hour : le H de hour est muet → son de voyelle → an."}
  ]},
 { id:"f0l5", title:"Pronoms & premiers verbes", sub:"I, you, he... + this/that + tes 12 premiers verbes",
  fiche:{ intro:"La dernière brique avant le niveau A1 : les pronoms personnels (qui fait l'action), this/that (montrer), et les 12 verbes les plus utilisés de la langue anglaise. Après cette leçon, tu peux construire tes premières vraies phrases.",
   secs:[
    {h:"Les pronoms sujets", v:[
     ["I","je (TOUJOURS en majuscule)"],
     ["you","tu, vous (pas de différence : le vouvoiement n'existe pas !)"],
     ["he / she / it","il / elle / il-elle pour un objet, un animal, une chose"],
     ["we / they","nous / ils, elles"],
     ["me, him, her, us, them","moi, lui, elle, nous, eux (après un verbe : call me, help him)"]
    ]},
    {h:"Montrer : this / that", v:[
     ["this bag (ici) / that bag (là-bas)","ce sac-ci (proche) / ce sac-là (loin)"],
     ["these bags / those bags","pluriels : ceux-ci / ceux-là"],
     ["What is this? — It's my passport.","Qu'est-ce que c'est ? — C'est mon passeport."]
    ]},
    {h:"Les 12 verbes les plus utiles", v:[
     ["to be / to have","être / avoir"],
     ["to go / to come","aller / venir"],
     ["to do / to make","faire (do : activité, make : fabriquer)"],
     ["to want / to need","vouloir / avoir besoin de"],
     ["to see / to know","voir / savoir, connaître"],
     ["to speak / to understand","parler / comprendre"]
    ]}],
   phr:[
    ["I speak a little English.","Je parle un peu anglais."],
    ["What is this? — It's my boarding pass.","Qu'est-ce que c'est ? — C'est ma carte d'embarquement."],
    ["I need help, please.","J'ai besoin d'aide, s'il vous plaît."]]},
  q:[
   {t:"qcm", q:"« je » en anglais s'écrit :", opts:["i","I","J","me"], a:1, x:"I : toujours en majuscule, même au milieu d'une phrase."},
   {t:"qcm", q:"Pour vouvoyer quelqu'un, on utilise :", opts:["thou","you (comme pour tutoyer)","he","yous"], a:1, x:"You = tu ET vous. Le vouvoiement n'existe pas : la politesse passe par please, would you..."},
   {t:"gap", q:"Look at ___ bag here, next to me.", opts:["that","this","those","the this"], a:1, x:"This = proche (ici). That = loin (là-bas)."},
   {t:"qcm", q:"On parle d'une table (objet). Quel pronom ?", opts:["he","she","it","they"], a:2, x:"It pour les objets, animaux et choses. He/she : réservés aux personnes."},
   {t:"qcm", q:"« to need » :", opts:["vouloir","avoir besoin de","devoir","chercher"], a:1, x:"Need = avoir besoin. Want = vouloir."},
   {t:"build", q:"Traduisez : « Je parle un peu anglais »", words:["I","speak","a","little","English"], extra:["talk","small"], x:"A little = un peu. Ta phrase d'introduction pour toute conversation !"},
   {t:"listen", say:"What is this? — It's my passport", q:"De quoi parle-t-on ?", opts:["D'un passeport","D'un billet","D'un téléphone","D'une valise"], a:0, x:"What is this? = qu'est-ce que c'est ? It's my passport = c'est mon passeport."},
   {t:"gap", q:"Can you help ___, please?", opts:["I","me","my","mine"], a:1, x:"Après un verbe → pronom complément : me, him, her, us, them."},
   {t:"listen", say:"I need help, I don't understand", q:"Que dit la personne ?", opts:["Elle a besoin d'aide, elle ne comprend pas","Elle propose son aide","Elle a tout compris","Elle cherche quelqu'un"], a:0, x:"I need help = j'ai besoin d'aide. I don't understand = je ne comprends pas."},
   {t:"qcm", q:"« they » :", opts:["nous","vous","ils / elles","les gens en général uniquement"], a:2, x:"They = ils/elles (et aussi pronom neutre singulier en anglais moderne)."}
  ]}
]},
{ id:"A1", code:"SK101", name:"Niveau A1 — Découverte", sub:"CECRL : besoins concrets, se présenter", lessons:[
 { id:"a1l1", title:"Saluer & se présenter", sub:"Le verbe BE, les pronoms, la politesse",
  fiche:{ intro:"Objectif CECRL A1 : comprendre et utiliser des expressions familières et quotidiennes, se présenter et présenter quelqu'un. La clé : le verbe BE (être), le plus important de la langue anglaise.",
   secs:[
    {h:"Le verbe BE au présent", v:[
     ["I am (I'm) French.","Je suis français(e). I → am"],
     ["You are (You're) welcome.","Tu es / vous êtes. You → are"],
     ["He is / She is / It is late.","Il / elle est. He, she, it → is"],
     ["We are / They are here.","Nous sommes / ils sont. We, they → are"],
     ["Am I late? — You aren't late.","Question : Am/Is/Are + sujet. Négation : isn't / aren't"]
    ]},
    {h:"Saluer selon le moment", v:[
     ["Hello! / Hi!","Bonjour ! / Salut ! (universel)"],
     ["Good morning / afternoon / evening","Bonjour (matin) / (après-midi) / bonsoir"],
     ["Goodbye! / Bye! / Good night!","Au revoir / Salut / Bonne nuit (au coucher)"],
     ["How are you? — I'm fine, thank you.","Comment allez-vous ? — Très bien, merci."],
     ["Please / Thank you / You're welcome / Sorry","S'il vous plaît / Merci / De rien / Pardon"]
    ]}],
   phr:[
    ["Hello! My name is Yohan. Nice to meet you.","Bonjour ! Je m'appelle Yohan. Enchanté."],
    ["This is my friend, Paul.","Voici mon ami, Paul."],
    ["See you later! Have a nice day!","À plus tard ! Bonne journée !"]]},
  q:[
   {t:"qcm", q:"Comment dit-on « Bonsoir » ?", opts:["Good morning","Good evening","Good night","Goodbye"], a:1, x:"Good evening = bonsoir (en arrivant). Good night = bonne nuit (en partant se coucher)."},
   {t:"gap", q:"My name ___ Yohan.", opts:["is","are","am","be"], a:0, x:"« My name » = 3e personne du singulier → is."},
   {t:"gap", q:"I ___ French.", opts:["is","are","am","be"], a:2, x:"I → am, toujours."},
   {t:"gap", q:"They ___ my friends.", opts:["is","am","are","be"], a:2, x:"We / You / They → are."},
   {t:"qcm", q:"Que répond-on à « Thank you » ?", opts:["Please","You're welcome","Excuse me","I'm sorry"], a:1, x:"You're welcome = de rien. On peut aussi dire « No problem »."},
   {t:"build", q:"Traduisez : « Je m'appelle Sarah »", words:["My","name","is","Sarah"], extra:["am","I"], x:"My name is Sarah. On peut aussi dire « I am Sarah »."},
   {t:"listen", say:"Nice to meet you", q:"Que signifie la phrase entendue ?", opts:["Enchanté(e)","À bientôt","Excusez-moi","Bonne chance"], a:0, x:"« Nice to meet you » se dit lors d'une première rencontre."},
   {t:"gap", q:"How ___ you? — I'm fine, thanks.", opts:["is","are","am","do"], a:1, x:"How are you? → réponse : I'm fine / I'm good."},
   {t:"qcm", q:"« This is my friend » signifie :", opts:["C'est mon ami","Voici pour mon ami","Il est amical","J'aime mon ami"], a:0, x:"« This is... » sert à présenter quelqu'un."},
   {t:"listen", say:"Good morning! How are you today?", q:"Quel moment de la journée est-ce ?", opts:["Le soir","Le matin","La nuit","L'après-midi"], a:1, x:"Good morning = le matin."}
  ]},
 { id:"a1l2", title:"Famille & les gens", sub:"HAVE GOT, adjectifs possessifs, décrire",
  fiche:{ intro:"Parler de sa famille et de ses proches : le verbe HAVE (avoir), les adjectifs possessifs (my, your, his, her...) et le vocabulaire de la famille.",
   secs:[
    {h:"Avoir : HAVE / HAS", v:[
     ["I have two brothers.","J'ai deux frères. I/you/we/they → have"],
     ["She has a big family.","Elle a une grande famille. He/she/it → has"],
     ["Do you have children? — Yes, I do.","Question : Do/Does + sujet + have"],
     ["He doesn't have a car.","Négation : don't / doesn't + have"]
    ]},
    {h:"Les possessifs", v:[
     ["my / your","mon, ma, mes / ton, votre"],
     ["his / her / its","son, sa (à lui) / son, sa (à elle) / son (objet)"],
     ["our / their","notre, nos / leur, leurs"],
     ["Paul's sister","la sœur de Paul → 's = possession"]
    ]},
    {h:"La famille", v:[
     ["mother, father, parents","mère, père, parents"],
     ["brother, sister, son, daughter","frère, sœur, fils, fille"],
     ["husband, wife, children (child)","mari, femme, enfants (enfant)"],
     ["grandmother, grandfather, uncle, aunt, cousin","grand-mère, grand-père, oncle, tante, cousin(e)"]
    ]}],
   phr:[
    ["I have one brother and two sisters.","J'ai un frère et deux sœurs."],
    ["Her name is Emma. She is my daughter.","Elle s'appelle Emma. C'est ma fille."],
    ["How old are you? — I am 25 years old.","Quel âge as-tu ? — J'ai 25 ans."]]},
  q:[
   {t:"gap", q:"I ___ two brothers.", opts:["has","have","am","is"], a:1, x:"I → have. Has = uniquement he/she/it."},
   {t:"gap", q:"She ___ a big family.", opts:["have","haves","has","is"], a:2, x:"She → has."},
   {t:"qcm", q:"« daughter », c'est :", opts:["la fille (enfant)","la sœur","la femme","la tante"], a:0, x:"Daughter = fille (par rapport aux parents). Son = fils."},
   {t:"qcm", q:"« son, sa » en parlant d'une femme :", opts:["his","her","its","their"], a:1, x:"Her = à elle. His = à lui. Le possessif s'accorde avec le possesseur !"},
   {t:"build", q:"Traduisez : « J'ai 25 ans »", words:["I","am","25","years","old"], extra:["have","age"], x:"En anglais, on EST son âge : I am 25 (years old). Jamais « I have 25 years » !"},
   {t:"listen", say:"How old are you?", q:"Que demande la personne ?", opts:["Comment tu t'appelles ?","Quel âge as-tu ?","Où habites-tu ?","Comment vas-tu ?"], a:1, x:"How old...? = quel âge... ?"},
   {t:"gap", q:"___ you have children? — No, I don't.", opts:["Are","Does","Do","Is"], a:2, x:"Question avec have : Do you have...? (Does pour he/she/it)."},
   {t:"qcm", q:"« Paul's sister » signifie :", opts:["Paul est une sœur","les sœurs Paul","la sœur de Paul","Paul et sa sœur"], a:2, x:"Le 's marque la possession : la sœur DE Paul."},
   {t:"gap", q:"We love ___ parents.", opts:["us","our","we","ours"], a:1, x:"Our = notre/nos (adjectif possessif devant un nom)."},
   {t:"listen", say:"This is my husband and these are our two children", q:"Qui présente la personne ?", opts:["Son mari et leurs deux enfants","Sa femme et un enfant","Ses parents","Son frère et sa sœur"], a:0, x:"Husband = mari, children = enfants."}
  ]},
 { id:"a1l3", title:"Nombres, jours & heure", sub:"Compter, dater, donner l'heure",
  fiche:{ intro:"Les nombres, les jours, les mois et l'heure : indispensables pour comprendre un horaire, un prix, une porte d'embarquement... La base de la vie pratique.",
   secs:[
    {h:"Nombres pièges", v:[
     ["13 thirteen / 30 thirty","-teen (13-19) se prononce fort à la fin ; -ty (20-90) est court"],
     ["14 fourteen / 40 forty","Attention : forty sans u !"],
     ["15 fifteen / 50 fifty — 5 five","five → fif- dans fifteen/fifty"],
     ["100 a hundred / 1,000 a thousand","En anglais la virgule sépare les milliers"]
    ]},
    {h:"Jours et mois", v:[
     ["Monday, Tuesday, Wednesday, Thursday","lundi, mardi, mercredi, jeudi"],
     ["Friday, Saturday, Sunday","vendredi, samedi, dimanche — majuscule obligatoire !"],
     ["January, February, March, April, May, June","janvier → juin"],
     ["July, August, September, October, November, December","juillet → décembre"]
    ]},
    {h:"L'heure et les prépositions", v:[
     ["It's eight o'clock. / It's half past eight.","Il est 8 h / 8 h 30"],
     ["It's a quarter past two. / a quarter to three.","2 h 15 / 3 h moins le quart"],
     ["AT 3 o'clock / AT noon","à + heure → at"],
     ["ON Monday / ON May 5th","le + jour ou date → on"],
     ["IN May / IN 2026 / IN the morning","en + mois, année, moment → in"]
    ]}],
   phr:[
    ["What time is it? — It's ten thirty.","Quelle heure est-il ? — 10 h 30."],
    ["The meeting is on Tuesday at 9 am.","La réunion est mardi à 9 h."],
    ["My birthday is in October.","Mon anniversaire est en octobre."]]},
  q:[
   {t:"qcm", q:"Comment s'écrit « 13 » ?", opts:["thirty","thirteen","threeteen","thirdteen"], a:1, x:"13 = thirteen. 30 = thirty."},
   {t:"qcm", q:"Comment s'écrit « 40 » ?", opts:["fourty","fourteen","forty","fourteeny"], a:2, x:"Forty, sans « u ». Piège orthographique classique."},
   {t:"qcm", q:"« Wednesday », c'est :", opts:["lundi","mercredi","jeudi","dimanche"], a:1, x:"Mon-Tues-Wednes-Thurs-Fri-Satur-Sun + day."},
   {t:"gap", q:"The flight is ___ 3 o'clock.", opts:["at","on","in","to"], a:0, x:"AT + heure précise."},
   {t:"gap", q:"The meeting is ___ Monday.", opts:["at","on","in","of"], a:1, x:"ON + jour de la semaine."},
   {t:"gap", q:"My birthday is ___ October.", opts:["at","on","in","of"], a:2, x:"IN + mois ou année."},
   {t:"build", q:"Traduisez : « Il est huit heures et demie »", words:["It","is","half","past","eight"], extra:["thirty","and"], x:"Half past eight = 8 h 30. On peut aussi dire « eight thirty »."},
   {t:"listen", say:"The train leaves at seven fifteen", q:"À quelle heure part le train ?", opts:["7h50","7h15","7h05","17h15"], a:1, x:"Seven fifteen = 7:15 (= a quarter past seven)."},
   {t:"listen", say:"Gate number nineteen", q:"Quel est le numéro de porte annoncé ?", opts:["9","19","90","29"], a:1, x:"Nineteen (19) : l'accent est sur la fin. Ninety (90) : accent au début."},
   {t:"qcm", q:"« a quarter to three », c'est :", opts:["3h15","2h45","3h30","3h04"], a:1, x:"A quarter TO = moins le quart → 2 h 45."}
  ]},
 { id:"a1l4", title:"Le présent simple", sub:"Habitudes et vérités : do / does",
  fiche:{ intro:"Le présent simple exprime les habitudes, les goûts et les faits permanents. Règle d'or : à la 3e personne (he/she/it), le verbe prend un -s. Les questions et négations utilisent DO / DOES.",
   secs:[
    {h:"La règle du -s", v:[
     ["I work — She works","je travaille — elle travaille (+s à la 3e pers.)"],
     ["He watches TV. / She goes out. / He studies.","-ch, -sh, -o, -x → +es ; consonne+y → -ies"],
     ["I like coffee. He likes tea.","like → likes"]
    ]},
    {h:"Questions et négations", v:[
     ["Do you speak English? — Yes, I do.","Question : Do + I/you/we/they"],
     ["Does she work here? — No, she doesn't.","Does + he/she/it (et le verbe PERD son -s)"],
     ["I don't smoke. / He doesn't drive.","Négation : don't / doesn't + base verbale"]
    ]},
    {h:"Les verbes du quotidien", v:[
     ["get up, have breakfast, go to work","se lever, prendre le petit-déjeuner, aller au travail"],
     ["start, finish, come back home","commencer, finir, rentrer à la maison"],
     ["like, love, hate, prefer, want, need","aimer bien, adorer, détester, préférer, vouloir, avoir besoin"]
    ]}],
   phr:[
    ["I get up at six and I start work at eight.","Je me lève à 6 h et je commence le travail à 8 h."],
    ["She speaks three languages.","Elle parle trois langues."],
    ["I don't understand. Can you repeat, please?","Je ne comprends pas. Pouvez-vous répéter ?"]]},
  q:[
   {t:"gap", q:"She ___ in a bank.", opts:["work","works","working","is work"], a:1, x:"He/she/it → verbe + s."},
   {t:"gap", q:"I ___ coffee in the morning.", opts:["drinks","drink","drinking","am drink"], a:1, x:"I → verbe sans s."},
   {t:"gap", q:"He ___ TV every evening.", opts:["watch","watchs","watches","watching"], a:2, x:"Verbe en -ch → +es : watches."},
   {t:"gap", q:"___ she speak English?", opts:["Do","Is","Does","Are"], a:2, x:"Does + he/she/it. Et le verbe reste sans s : Does she speak..."},
   {t:"gap", q:"They ___ like fish.", opts:["doesn't","don't","aren't","no"], a:1, x:"They → don't + base verbale."},
   {t:"build", q:"Traduisez : « Je ne comprends pas »", words:["I","do","not","understand"], extra:["no","am"], x:"I do not (don't) understand. La phrase la plus utile de votre apprentissage !"},
   {t:"listen", say:"I get up at six every morning", q:"Que fait la personne à 6 h ?", opts:["Elle se couche","Elle se lève","Elle déjeune","Elle sort"], a:1, x:"To get up = se lever."},
   {t:"qcm", q:"« She never works on Sunday » signifie :", opts:["Elle travaille parfois le dimanche","Elle ne travaille jamais le dimanche","Elle travaille tous les dimanches","Elle déteste le dimanche"], a:1, x:"Never = jamais. Se place avant le verbe."},
   {t:"listen", say:"My sister lives in London and works in a hospital", q:"Où travaille la sœur ?", opts:["Dans une école","Dans un hôtel","Dans un hôpital","Dans un aéroport"], a:2, x:"Hospital = hôpital. Attention à la prononciation proche de « hotel » !"},
   {t:"qcm", q:"Quelle phrase est correcte ?", opts:["He don't like tea","He doesn't likes tea","He doesn't like tea","He not like tea"], a:2, x:"Doesn't + base verbale SANS s."}
  ]},
 { id:"a1l5", title:"Au restaurant & au magasin", sub:"There is/are, some/any, commander",
  fiche:{ intro:"Commander, acheter, demander poliment : les structures « there is / there are » (il y a), « some / any », et les formules pour obtenir ce que vous voulez.",
   secs:[
    {h:"Il y a : there is / there are", v:[
     ["There is a café near here.","Il y a UN café (singulier → there is)"],
     ["There are two restaurants.","Il y a DES restaurants (pluriel → there are)"],
     ["Is there a bank? — Yes, there is.","Question : Is/Are there...?"]
    ]},
    {h:"Some / any", v:[
     ["I'd like some water, please.","Some : phrases affirmatives (du, de la, des)"],
     ["Do you have any tables? / We don't have any bread.","Any : questions et négations"]
    ]},
    {h:"Commander et payer", v:[
     ["I would like (I'd like) a coffee, please.","Je voudrais un café. Plus poli que « I want »"],
     ["Can I have the menu / the bill, please?","Puis-je avoir le menu / l'addition ?"],
     ["How much is it? — It's ten euros.","Combien ça coûte ? — 10 euros."],
     ["Anything else? — No, that's all, thank you.","Autre chose ? — Non, ce sera tout."]
    ]}],
   phr:[
    ["A table for two, please.","Une table pour deux, s'il vous plaît."],
    ["I'd like a sandwich and a bottle of water.","Je voudrais un sandwich et une bouteille d'eau."],
    ["Excuse me, where can I pay?","Excusez-moi, où puis-je payer ?"]]},
  q:[
   {t:"gap", q:"___ a pharmacy near here?", opts:["Is there","Are there","There is","Have"], a:0, x:"Question au singulier : Is there...?"},
   {t:"gap", q:"There ___ two cafés in this street.", opts:["is","are","have","be"], a:1, x:"Pluriel → there are."},
   {t:"gap", q:"I'd like ___ water, please.", opts:["any","a","some","an"], a:2, x:"Affirmation → some. Water est indénombrable (pas de « a »)."},
   {t:"gap", q:"Do you have ___ free tables?", opts:["some","any","a","the"], a:1, x:"Question → any."},
   {t:"build", q:"Traduisez : « Je voudrais un café, s'il vous plaît »", words:["I","would","like","a","coffee","please"], extra:["want","the"], x:"I would like = I'd like. La politesse anglaise avant tout !"},
   {t:"qcm", q:"« the bill », au restaurant, c'est :", opts:["le menu","le pourboire","l'addition","le plat du jour"], a:2, x:"Bill (GB) / check (US) = l'addition. Tip = pourboire."},
   {t:"listen", say:"That's eight fifty, please", q:"Combien faut-il payer ?", opts:["8,50","8,15","85","18,50"], a:0, x:"Eight fifty = 8.50 (huit cinquante)."},
   {t:"qcm", q:"« How much is it? » signifie :", opts:["Combien ça coûte ?","Combien y en a-t-il ?","C'est trop ?","Quelle taille ?"], a:0, x:"How much + prix. How many + quantité dénombrable."},
   {t:"listen", say:"Would you like anything else? — No, that's all, thank you", q:"Que répond le client ?", opts:["Il commande autre chose","Ce sera tout","Il demande l'addition","Il n'a pas compris"], a:1, x:"That's all = ce sera tout."},
   {t:"qcm", q:"Le plus poli pour demander :", opts:["Give me a coffee","I want a coffee","Coffee!","I'd like a coffee, please"], a:3, x:"« I'd like..., please » est la formule polie de référence."}
  ]},
 { id:"a1l6", title:"Voyager — besoins essentiels", sub:"CAN, lieux, se débrouiller en voyage",
  fiche:{ intro:"Objectif final du A1 : survivre en voyage ! Le modal CAN (pouvoir), demander son chemin, comprendre les panneaux, gérer les situations simples de l'aéroport et de l'hôtel.",
   secs:[
    {h:"Le modal CAN", v:[
     ["I can speak a little English.","Je peux / je sais parler un peu anglais"],
     ["Can you help me, please?","Pouvez-vous m'aider ? (demande)"],
     ["Can I see your passport?","Puis-je... ? (permission)"],
     ["I can't find my ticket.","Négation : can't (cannot)"]
    ]},
    {h:"Vocabulaire du voyage", v:[
     ["a ticket, a passport, a suitcase, a bag","un billet, un passeport, une valise, un sac"],
     ["the airport, the train station, the hotel","l'aéroport, la gare, l'hôtel"],
     ["a plane, a train, a bus, a taxi","un avion, un train, un bus, un taxi"],
     ["the toilets / the restroom","les toilettes (GB / US)"],
     ["open / closed — entrance / exit","ouvert / fermé — entrée / sortie"]
    ]}],
   phr:[
    ["Excuse me, where is the train station?","Excusez-moi, où est la gare ?"],
    ["Can you speak more slowly, please?","Pouvez-vous parler plus lentement ?"],
    ["I have a reservation. My name is Yohan.","J'ai une réservation. Je m'appelle Yohan."]]},
  q:[
   {t:"gap", q:"___ you help me, please?", opts:["Can","Do","Are","Have"], a:0, x:"Can you...? = pouvez-vous... ?"},
   {t:"gap", q:"I ___ find my passport!", opts:["can no","can't","don't can","not can"], a:1, x:"Can't = cannot. Jamais « don't can » !"},
   {t:"qcm", q:"« exit », c'est :", opts:["l'entrée","la sortie","l'escalier","l'ascenseur"], a:1, x:"Exit = sortie. Entrance = entrée."},
   {t:"build", q:"Traduisez : « Où sont les toilettes ? »", words:["Where","are","the","toilets"], extra:["is","what"], x:"Where are the toilets? (US : the restroom)."},
   {t:"qcm", q:"« a suitcase », c'est :", opts:["un costume","une valise","un sac à main","un étui"], a:1, x:"Suitcase = valise. Handbag = sac à main."},
   {t:"listen", say:"The bus station is on the left, next to the hotel", q:"Où est la gare routière ?", opts:["À droite de l'hôtel","À gauche, à côté de l'hôtel","En face de l'hôtel","Derrière l'hôtel"], a:1, x:"On the left = à gauche ; next to = à côté de."},
   {t:"build", q:"Traduisez : « Pouvez-vous parler plus lentement ? »", words:["Can","you","speak","more","slowly"], extra:["talk","slow"], x:"More slowly = plus lentement. Phrase de survie n°1 !"},
   {t:"qcm", q:"« I have a reservation » se dit :", opts:["à l'hôtel","seulement au restaurant","seulement à l'aéroport","quand on hésite"], a:0, x:"Utilisable à l'hôtel, au restaurant... Reservation = booking."},
   {t:"listen", say:"Can I see your ticket, please?", q:"Que demande la personne ?", opts:["Votre billet","Votre passeport","Votre valise","Votre siège"], a:0, x:"Ticket = billet."},
   {t:"qcm", q:"« closed », c'est :", opts:["ouvert","fermé","proche","complet"], a:1, x:"Closed = fermé. Open = ouvert. Close (adj.) = proche — attention !"}
  ]}
]},
{ id:"A2", code:"SK202", name:"Niveau A2 — Élémentaire", sub:"CECRL : situations courantes, autonomie de survie", lessons:[
 { id:"a2l1", title:"Routine & fréquence", sub:"Présent simple vs continu, adverbes",
  fiche:{ intro:"Objectif A2 : décrire sa vie quotidienne avec précision. Distinguer présent simple (habitudes) et présent continu (action en cours) : la confusion n°1 des francophones.",
   secs:[
    {h:"Simple ou continu ?", v:[
     ["I work in Paris. (fact/habit)","Présent simple : habitude, fait permanent"],
     ["I am working right now. (now)","Présent continu : be + verbe-ing, action en cours"],
     ["She usually drives, but today she is walking.","D'habitude vs en ce moment"],
     ["I am working this week at Terminal 2.","Aussi pour un arrangement temporaire"]
    ]},
    {h:"Adverbes de fréquence", v:[
     ["always (100%) — usually — often","toujours — d'habitude — souvent"],
     ["sometimes — rarely / seldom — never (0%)","parfois — rarement — jamais"],
     ["I always check my emails first.","L'adverbe se place AVANT le verbe..."],
     ["She is often late.","...mais APRÈS le verbe be"],
     ["once / twice / three times a week","une fois / deux fois / trois fois par semaine"]
    ]}],
   phr:[
    ["What do you do? — I'm a student.","Que faites-vous dans la vie ? — Je suis étudiant."],
    ["How often do you travel? — Twice a year.","À quelle fréquence voyagez-vous ? — Deux fois par an."],
    ["Sorry, I can't talk now, I'm driving.","Désolé, je ne peux pas parler, je conduis."]]},
  q:[
   {t:"gap", q:"Be quiet, please! The baby ___.", opts:["sleeps","is sleeping","sleep","slept"], a:1, x:"Action en cours → présent continu : is sleeping."},
   {t:"gap", q:"Water ___ at 100°C.", opts:["is boiling","boil","boils","boiled"], a:2, x:"Vérité générale → présent simple."},
   {t:"gap", q:"She ___ late for work.", opts:["is often","often is","often","is being often"], a:0, x:"L'adverbe se place après BE : she is often late."},
   {t:"qcm", q:"« I usually take the bus, but today I ___ » :", opts:["walk","am walking","walks","walked"], a:1, x:"Today = exception en cours → présent continu."},
   {t:"qcm", q:"« twice a week » signifie :", opts:["deux semaines","toutes les deux semaines","deux fois par semaine","le week-end"], a:2, x:"Once = 1 fois, twice = 2 fois, puis three times, four times..."},
   {t:"build", q:"Traduisez : « Je ne peux pas parler, je conduis »", words:["I","can't","talk","I","am","driving"], extra:["drive","not"], x:"Action en cours → I am driving."},
   {t:"listen", say:"What do you do? — I work for an airline", q:"Que fait la personne ?", opts:["Elle travaille pour une compagnie aérienne","Elle est en voyage","Elle cherche du travail","Elle travaille à la gare"], a:0, x:"« What do you do? » = quel est votre métier ? Airline = compagnie aérienne."},
   {t:"gap", q:"He ___ coffee. He prefers tea.", opts:["never drinks","drinks never","never drink","is never drinking"], a:0, x:"Never + verbe(+s) : he never drinks."},
   {t:"listen", say:"I'm looking for my boarding pass", q:"Que fait la personne en ce moment ?", opts:["Elle imprime sa carte","Elle cherche sa carte d'embarquement","Elle a perdu son passeport","Elle regarde les horaires"], a:1, x:"To look for = chercher. Présent continu = en ce moment."},
   {t:"qcm", q:"Quelle phrase est correcte ?", opts:["I am knowing him","I know him","I knowing him","I am know him"], a:1, x:"Les verbes d'état (know, like, want, need...) ne se mettent pas au continu."}
  ]},
 { id:"a2l2", title:"Le prétérit", sub:"Raconter le passé : réguliers & irréguliers",
  fiche:{ intro:"Le prétérit (simple past) raconte des actions terminées et datées : yesterday, last week, in 2020, two days ago. Verbes réguliers : +ed. Irréguliers : à mémoriser (les 20 plus fréquents suffisent pour commencer).",
   secs:[
    {h:"Formation", v:[
     ["I worked / she visited / they played","Réguliers : base + ed (pour TOUTES les personnes)"],
     ["Did you see it? — Yes, I did.","Question : Did + sujet + BASE verbale"],
     ["She didn't come.","Négation : didn't + BASE verbale (jamais deux passés !)"],
     ["yesterday, last night, two years ago, in 2019","Les marqueurs qui imposent le prétérit"]
    ]},
    {h:"Irréguliers essentiels", v:[
     ["go → went / see → saw / have → had","aller / voir / avoir"],
     ["do → did / make → made / take → took","faire / fabriquer / prendre"],
     ["come → came / get → got / buy → bought","venir / obtenir / acheter"],
     ["say → said / tell → told / find → found","dire / raconter / trouver"],
     ["leave → left / lose → lost / fly → flew","partir / perdre / voler (avion)"],
     ["be → was (I/he/she/it) / were (you/we/they)","être : deux formes au passé"]
    ]}],
   phr:[
    ["I went to Spain last summer.","Je suis allé en Espagne l'été dernier."],
    ["The flight was two hours late.","Le vol avait deux heures de retard."],
    ["Did you have a good trip? — Yes, it was great!","As-tu fait bon voyage ? — Oui, c'était super !"]]},
  q:[
   {t:"gap", q:"Yesterday I ___ to London.", opts:["go","went","gone","was go"], a:1, x:"Go → went."},
   {t:"qcm", q:"Le prétérit de « buy » :", opts:["buyed","bought","brought","buys"], a:1, x:"Buy → bought. Bring → brought (apporter) : deux pièges proches !"},
   {t:"gap", q:"She ___ arrive on time.", opts:["didn't","doesn't","don't","wasn't"], a:0, x:"Passé → didn't + base verbale."},
   {t:"gap", q:"___ you enjoy your holiday?", opts:["Do","Did","Were","Have"], a:1, x:"Question au passé : Did + sujet + base."},
   {t:"gap", q:"The passengers ___ very tired after the flight.", opts:["was","did","were","are"], a:2, x:"They → were. Was = I/he/she/it."},
   {t:"qcm", q:"Le prétérit de « fly » (voler) :", opts:["flied","flow","flew","flyed"], a:2, x:"Fly → flew → flown. « The plane flew over the Alps »."},
   {t:"build", q:"Traduisez : « Nous avons visité le musée hier »", words:["We","visited","the","museum","yesterday"], extra:["have","visit"], x:"Action datée → prétérit simple (pas de « have »)."},
   {t:"listen", say:"I lost my luggage at the airport last week", q:"Que s'est-il passé ?", opts:["Elle a trouvé un bagage","Elle a perdu ses bagages","Elle a raté son vol","Elle a oublié son billet"], a:1, x:"Lose → lost. Luggage = bagages."},
   {t:"listen", say:"The flight left at nine and arrived at eleven thirty", q:"À quelle heure le vol est-il arrivé ?", opts:["9h00","11h30","11h13","21h30"], a:1, x:"Leave → left (est parti). Eleven thirty = 11h30."},
   {t:"qcm", q:"Quelle phrase est correcte ?", opts:["She didn't went home","She didn't goed home","She didn't go home","She don't went home"], a:2, x:"Après didn't → base verbale : didn't go."}
  ]},
 { id:"a2l3", title:"En ville & directions", sub:"Se repérer, demander et guider",
  fiche:{ intro:"Demander son chemin, comprendre un itinéraire, guider quelqu'un : compétence clé du voyageur ET de l'agent d'escale qui oriente les passagers toute la journée.",
   secs:[
    {h:"Demander et guider", v:[
     ["Excuse me, how do I get to the station?","Excusez-moi, comment aller à la gare ?"],
     ["Go straight ahead / straight on.","Allez tout droit."],
     ["Turn left / Turn right at the traffic lights.","Tournez à gauche / à droite aux feux."],
     ["Take the first street on the right.","Prenez la première rue à droite."],
     ["It's about five minutes' walk.","C'est à environ 5 minutes à pied."]
    ]},
    {h:"Se situer", v:[
     ["next to / near / far from","à côté de / près de / loin de"],
     ["opposite / across from","en face de"],
     ["between the bank and the café","entre la banque et le café"],
     ["behind / in front of","derrière / devant"],
     ["at the corner / at the crossroads / at the roundabout","au coin / au carrefour / au rond-point"],
     ["upstairs / downstairs — on the first floor","à l'étage / en bas — au premier étage"]
    ]}],
   phr:[
    ["Excuse me, is there a pharmacy near here?","Excusez-moi, y a-t-il une pharmacie près d'ici ?"],
    ["The lifts are behind the check-in desks.","Les ascenseurs sont derrière les comptoirs d'enregistrement."],
    ["You can't miss it!","Vous ne pouvez pas le rater !"]]},
  q:[
   {t:"qcm", q:"« Turn right » :", opts:["tournez à gauche","tournez à droite","faites demi-tour","tout droit"], a:1, x:"Right = droite. Left = gauche."},
   {t:"gap", q:"The bank is ___ the hotel and the café.", opts:["among","between","middle","during"], a:1, x:"Between A and B = entre A et B."},
   {t:"qcm", q:"« opposite the station » :", opts:["derrière la gare","en face de la gare","loin de la gare","dans la gare"], a:1, x:"Opposite = across from = en face de."},
   {t:"build", q:"Traduisez : « Allez tout droit puis tournez à gauche »", words:["Go","straight","ahead","then","turn","left"], extra:["right","take"], x:"Go straight ahead, then turn left."},
   {t:"listen", say:"Take the second street on the right, the museum is opposite the park", q:"Où est le musée ?", opts:["Dans le parc","En face du parc","Derrière le parc","À côté de la 2e rue à gauche"], a:1, x:"Opposite the park = en face du parc."},
   {t:"gap", q:"How do I ___ to the airport?", opts:["arrive","go to","get","reach at"], a:2, x:"How do I GET to...? = comment me rendre à... ? (très idiomatique)."},
   {t:"qcm", q:"« upstairs » :", opts:["au sous-sol","à l'étage","dans l'escalier","dehors"], a:1, x:"Upstairs = en haut / à l'étage. Downstairs = en bas."},
   {t:"listen", say:"The toilets are downstairs, next to the information desk", q:"Où sont les toilettes ?", opts:["En bas, à côté du comptoir d'information","À l'étage","Derrière l'accueil","Près de l'entrée"], a:0, x:"Downstairs + next to the information desk."},
   {t:"gap", q:"It's about ten minutes' ___ from here.", opts:["walk","walking to","feet","road"], a:0, x:"Ten minutes' walk = dix minutes à pied."},
   {t:"qcm", q:"« You can't miss it » signifie :", opts:["Vous ne pouvez pas y aller","Vous ne pouvez pas le rater","Il ne faut pas être en retard","C'est interdit"], a:1, x:"Se dit à la fin d'une explication d'itinéraire : impossible de le manquer."}
  ]},
 { id:"a2l4", title:"Achats & argent", sub:"Shopping, prix, tailles, moyens de paiement",
  fiche:{ intro:"Acheter, essayer, payer, échanger : les dialogues types du shopping et le vocabulaire de l'argent — utile aussi au comptoir excédent bagage !",
   secs:[
    {h:"Dans le magasin", v:[
     ["Can I help you? — I'm just looking, thanks.","Je peux vous aider ? — Je regarde seulement."],
     ["How much does it cost? / How much is it?","Combien ça coûte ?"],
     ["Can I try it on? — The fitting rooms are there.","Puis-je l'essayer ? — Les cabines sont là."],
     ["It's too big / too small. Do you have it in medium?","Trop grand / trop petit. Vous l'avez en M ?"],
     ["cheap / expensive — on sale / a discount","bon marché / cher — en soldes / une remise"]
    ]},
    {h:"Payer", v:[
     ["Can I pay by card? / in cash?","Par carte ? / en espèces ?"],
     ["Here's your change and your receipt.","Voici votre monnaie et votre ticket de caisse."],
     ["a coin / a note (a bill US)","une pièce / un billet"],
     ["I'd like a refund. / Can I exchange it?","Je voudrais un remboursement. / L'échanger ?"]
    ]}],
   phr:[
    ["How much is this suitcase? — It's forty-nine ninety-nine.","Combien coûte cette valise ? — 49,99."],
    ["Do you accept credit cards?","Acceptez-vous les cartes de crédit ?"],
    ["Keep the receipt for the refund.","Gardez le ticket pour le remboursement."]]},
  q:[
   {t:"qcm", q:"« expensive » :", opts:["bon marché","cher","gratuit","en solde"], a:1, x:"Expensive = cher. Cheap = bon marché. Free = gratuit."},
   {t:"gap", q:"Can I pay ___ card?", opts:["by","with the","in","on"], a:0, x:"Pay by card / pay in cash."},
   {t:"qcm", q:"« the receipt », c'est :", opts:["la recette","le reçu / ticket de caisse","la réception","le remboursement"], a:1, x:"Receipt = ticket de caisse. Faux ami : recette (cuisine) = recipe !"},
   {t:"build", q:"Traduisez : « Puis-je l'essayer ? »", words:["Can","I","try","it","on"], extra:["test","wear"], x:"To try on = essayer (un vêtement)."},
   {t:"listen", say:"That will be twenty-five euros fifty, please", q:"Quel est le prix ?", opts:["25,50 €","20,55 €","25,15 €","55,25 €"], a:0, x:"Twenty-five euros fifty = 25,50 €."},
   {t:"gap", q:"This jacket is too small. Do you have a ___ size?", opts:["bigger","more big","biggest","big"], a:0, x:"Comparatif court : big → bigger."},
   {t:"qcm", q:"« change », dans un magasin :", opts:["le changement","la monnaie rendue","l'échange","la caisse"], a:1, x:"Here's your change = voici votre monnaie."},
   {t:"listen", say:"I'm sorry, we only accept cash", q:"Comment peut-on payer ?", opts:["Par carte uniquement","En espèces uniquement","Par chèque","Par téléphone"], a:1, x:"Cash = espèces. Only = seulement."},
   {t:"gap", q:"I'd like a ___, this camera doesn't work.", opts:["refund","fund","payback","re-pay"], a:0, x:"A refund = un remboursement."},
   {t:"qcm", q:"« on sale » :", opts:["à vendre uniquement","en soldes / en promotion","épuisé","hors taxe"], a:1, x:"On sale = en promo. For sale = à vendre. Sold out = épuisé."}
  ]},
 { id:"a2l5", title:"Comparer & décrire", sub:"Comparatifs, superlatifs, adjectifs",
  fiche:{ intro:"Comparer des options, décrire des personnes et des objets : comparatifs et superlatifs, une mécanique très régulière... avec trois irréguliers célèbres.",
   secs:[
    {h:"Comparatifs", v:[
     ["Adjectif court : cheaper, bigger, easier (+ than)","cheap → cheaper than = moins cher que"],
     ["Adjectif long : more expensive, more comfortable","more + adjectif + than"],
     ["as fast as / not as big as","aussi rapide que / pas aussi grand que"],
     ["good → better / bad → worse / far → farther","Irréguliers : meilleur / pire / plus loin"]
    ]},
    {h:"Superlatifs", v:[
     ["the cheapest, the biggest, the easiest","le moins cher, le plus grand, le plus facile"],
     ["the most expensive, the most beautiful","the most + adjectif long"],
     ["the best / the worst","le meilleur / le pire"],
     ["It's the busiest airport in Europe.","in (pas of) après un superlatif de lieu"]
    ]}],
   phr:[
    ["The train is cheaper than the plane, but the plane is faster.","Le train est moins cher que l'avion, mais l'avion est plus rapide."],
    ["This is the best restaurant in town.","C'est le meilleur restaurant de la ville."],
    ["My new job is more interesting than the old one.","Mon nouveau travail est plus intéressant que l'ancien."]]},
  q:[
   {t:"gap", q:"The plane is ___ than the train.", opts:["faster","more fast","fastest","as fast"], a:0, x:"Adjectif court → +er : faster than."},
   {t:"gap", q:"This hotel is ___ expensive than the other one.", opts:["much","more","most","many"], a:1, x:"Adjectif long → more + adj + than."},
   {t:"qcm", q:"Le comparatif de « good » :", opts:["gooder","more good","better","best"], a:2, x:"Good → better → the best."},
   {t:"qcm", q:"Le comparatif de « bad » :", opts:["badder","more bad","worst","worse"], a:3, x:"Bad → worse → the worst."},
   {t:"gap", q:"Heathrow is one of ___ airports in the world.", opts:["the busiest","the most busy","busier","the busier"], a:0, x:"Superlatif : the busiest (busy → busiest)."},
   {t:"build", q:"Traduisez : « C'est le meilleur restaurant de la ville »", words:["This","is","the","best","restaurant","in","town"], extra:["better","of"], x:"The best + in town (pas « of the town »)."},
   {t:"listen", say:"The blue suitcase is bigger but heavier than the red one", q:"Que dit-on de la valise bleue ?", opts:["Plus petite et plus légère","Plus grande mais plus lourde","Moins chère","Plus solide"], a:1, x:"Bigger = plus grande, heavier = plus lourde."},
   {t:"gap", q:"My English is not ___ good ___ my French.", opts:["as / as","so / that","more / than","as / than"], a:0, x:"Not as... as = pas aussi... que."},
   {t:"listen", say:"Today's flight is much shorter than yesterday's", q:"Le vol d'aujourd'hui est :", opts:["Beaucoup plus court","Un peu plus long","Aussi long","Beaucoup plus long"], a:0, x:"Much shorter = beaucoup plus court."},
   {t:"qcm", q:"Quelle phrase est correcte ?", opts:["It's more cheaper","It's the more cheap","It's cheaper","It's cheapest than"], a:2, x:"Jamais « more » + « -er » ensemble !"}
  ]},
 { id:"a2l6", title:"Projets & aéroport", sub:"BE GOING TO, le futur proche, vocabulaire aérien",
  fiche:{ intro:"Parler de ses projets avec BE GOING TO, et premier bain dans l'anglais de l'aéroport : le vocabulaire que tout passager (et futur agent !) doit connaître.",
   secs:[
    {h:"Le futur proche : be going to", v:[
     ["I'm going to visit my family next week.","Intention, projet décidé : be + going to + verbe"],
     ["Are you going to take this flight?","Question : Is/Are + sujet + going to"],
     ["Look at the clouds! It's going to rain.","Prédiction avec indices visibles"]
    ]},
    {h:"L'aéroport côté passager", v:[
     ["to check in — the check-in desk","s'enregistrer — le comptoir d'enregistrement"],
     ["a boarding pass — the boarding gate","une carte d'embarquement — la porte"],
     ["to take off / to land","décoller / atterrir"],
     ["departures / arrivals","départs / arrivées"],
     ["on time / delayed / cancelled","à l'heure / retardé / annulé"],
     ["hand luggage / checked luggage","bagage cabine / bagage en soute"],
     ["a direct flight / a connection (connecting flight)","un vol direct / une correspondance"],
     ["security / passport control","le filtrage sûreté / le contrôle passeport"]
    ]}],
   phr:[
    ["I'm going to check in online tonight.","Je vais m'enregistrer en ligne ce soir."],
    ["What time does boarding start?","À quelle heure commence l'embarquement ?"],
    ["Is the flight on time? — No, it's delayed.","Le vol est-il à l'heure ? — Non, il est retardé."]]},
  q:[
   {t:"gap", q:"I ___ visit my parents next weekend.", opts:["am going to","go to","will to","going"], a:0, x:"Projet → be going to + verbe."},
   {t:"gap", q:"Look at those clouds! It ___ rain.", opts:["goes to","is going to","will going to","is go to"], a:1, x:"Prédiction avec indice visible → be going to."},
   {t:"qcm", q:"« to land » :", opts:["décoller","atterrir","embarquer","rouler"], a:1, x:"Land = atterrir. Take off = décoller."},
   {t:"qcm", q:"« hand luggage », c'est :", opts:["le bagage en soute","le bagage cabine","le sac à main","le chariot"], a:1, x:"Hand luggage / carry-on = cabine. Checked/hold luggage = soute."},
   {t:"build", q:"Traduisez : « Je vais m'enregistrer en ligne »", words:["I","am","going","to","check","in","online"], extra:["will","register"], x:"To check in online = s'enregistrer en ligne."},
   {t:"listen", say:"Flight BA two nine five to Madrid is now boarding at gate twelve", q:"Que se passe-t-il ?", opts:["Le vol pour Madrid embarque porte 12","Le vol de Madrid atterrit","Le vol est retardé de 12 min","Le vol part du terminal 12"], a:0, x:"Is now boarding = embarque maintenant. Gate twelve = porte 12."},
   {t:"gap", q:"The flight is not on time, it's ___.", opts:["delayed","late off","waiting","slowed"], a:0, x:"Delayed = retardé (le mot officiel des écrans d'aéroport)."},
   {t:"qcm", q:"« a connecting flight », c'est :", opts:["un vol direct","une correspondance","un vol retour","un vol connecté au wifi"], a:1, x:"Connection = correspondance."},
   {t:"listen", say:"Please have your passport and boarding pass ready", q:"Que faut-il préparer ?", opts:["Passeport et carte d'embarquement","Billet et visa","Bagage et étiquette","Carte bancaire"], a:0, x:"Have... ready = tenir prêt. L'annonce classique avant le contrôle."},
   {t:"qcm", q:"« departures » :", opts:["les départs","les arrivées","les retards","les correspondances"], a:0, x:"Departures = départs. Arrivals = arrivées."}
  ]}
]},
{ id:"B1", code:"SK303", name:"Niveau B1 — Seuil", sub:"CECRL : autonomie, opinions, voyage & travail", lessons:[
 { id:"b1l1", title:"Le present perfect", sub:"Have + participe passé : le pont passé-présent",
  fiche:{ intro:"Le present perfect (have/has + participe passé) relie le passé au présent : expériences de vie, actions récentes, situations qui durent encore. LA différence clé avec le prétérit : pas de date précise.",
   secs:[
    {h:"Les 3 grands usages", v:[
     ["I have been to London three times.","Expérience de vie (moment sans importance)"],
     ["She has just arrived.","Action récente : just = venir de"],
     ["I have worked here for five years.","Situation qui continue encore aujourd'hui"]
    ]},
    {h:"For, since, ever, never, yet, already", v:[
     ["for ten years / for two hours","FOR + durée"],
     ["since 2020 / since Monday","SINCE + point de départ"],
     ["Have you ever been to the USA?","Ever = déjà (dans une question)"],
     ["I have never flown business class.","Never = jamais"],
     ["Has the flight landed yet? — Not yet.","Yet = déjà/encore (questions et négations, en fin de phrase)"],
     ["I have already checked in.","Already = déjà (affirmations)"]
    ]},
    {h:"Perfect ou prétérit ?", v:[
     ["I have lost my keys. (= je ne les ai toujours pas)","Conséquence présente → present perfect"],
     ["I lost my keys yesterday.","Date précise → prétérit"],
     ["Have you seen this film? / Did you see it last night?","Sans date → perfect ; avec date → prétérit"]
    ]}],
   phr:[
    ["I've worked in customer service for three years.","Je travaille dans la relation client depuis trois ans."],
    ["Have you ever worked at an airport?","Avez-vous déjà travaillé dans un aéroport ?"],
    ["The passenger has just missed his connection.","Le passager vient de rater sa correspondance."]]},
  q:[
   {t:"gap", q:"I have lived here ___ 2019.", opts:["for","since","during","from"], a:1, x:"Since + point de départ."},
   {t:"gap", q:"She has worked here ___ ten years.", opts:["since","for","during","ago"], a:1, x:"For + durée."},
   {t:"gap", q:"Have you ___ been to New York?", opts:["never","yet","ever","already"], a:2, x:"Ever dans les questions = « déjà »."},
   {t:"qcm", q:"« She has just left » signifie :", opts:["Elle est juste partie à gauche","Elle vient de partir","Elle est enfin partie","Elle part bientôt"], a:1, x:"Have just + participe = venir de faire."},
   {t:"qcm", q:"Quelle phrase est correcte ?", opts:["I have seen him yesterday","I saw him yesterday","I have see him yesterday","I seen him yesterday"], a:1, x:"Date précise (yesterday) → prétérit, jamais present perfect."},
   {t:"gap", q:"The plane hasn't landed ___.", opts:["already","just","yet","still"], a:2, x:"Yet en fin de négation = « pas encore »."},
   {t:"build", q:"Traduisez : « Je n'ai jamais pris l'avion »", words:["I","have","never","flown","before"], extra:["flew","not"], x:"Have never + participe passé (fly → flew → flown)."},
   {t:"listen", say:"I've already checked in online, here is my boarding pass", q:"Qu'a fait le passager ?", opts:["Il s'est déjà enregistré en ligne","Il veut s'enregistrer","Il a perdu sa carte","Il vient d'arriver"], a:0, x:"Already = déjà. I've checked in = je me suis enregistré."},
   {t:"listen", say:"How long have you worked for this airline? — For six years", q:"Depuis combien de temps travaille-t-elle là ?", opts:["6 mois","6 ans","16 ans","Depuis 2006"], a:1, x:"For six years = depuis 6 ans (durée)."},
   {t:"qcm", q:"Le participe passé de « go » :", opts:["went","goed","gone","going"], a:2, x:"Go → went → gone. « She has gone home »."}
  ]},
 { id:"b1l2", title:"Futur & conditionnel 1", sub:"Will, be going to, if + présent",
  fiche:{ intro:"Trois façons de parler du futur (will, be going to, présent continu) et le premier conditionnel pour les situations réelles : « If it rains, we will stay inside. »",
   secs:[
    {h:"Quel futur choisir ?", v:[
     ["I'll help you with that suitcase!","WILL : décision spontanée, promesse, prédiction"],
     ["I'm going to apply for this job.","BE GOING TO : intention déjà décidée"],
     ["I'm flying to Rome on Tuesday.","Présent continu : arrangement fixé (billet acheté)"],
     ["The flight leaves at 9:40.","Présent simple : horaire officiel"]
    ]},
    {h:"Premier conditionnel (réel)", v:[
     ["If it rains, we will stay at home.","If + présent, will + verbe (JAMAIS if + will)"],
     ["If you hurry, you'll catch the flight.","Condition réalisable → conséquence"],
     ["Unless you run, you'll miss it.","Unless = if... not = à moins que"],
     ["When the plane lands, I'll call you.","When + présent (pas de will après when)"]
    ]}],
   phr:[
    ["Don't worry, I'll take care of it.","Ne vous inquiétez pas, je m'en occupe."],
    ["If the flight is delayed, we will inform you immediately.","Si le vol est retardé, nous vous informerons immédiatement."],
    ["What are you going to do after the training?","Que vas-tu faire après la formation ?"]]},
  q:[
   {t:"gap", q:"If it rains, we ___ stay at home.", opts:["would","will","did","are"], a:1, x:"Conditionnel 1 : if + présent, will + verbe."},
   {t:"qcm", q:"« If + will » dans la même proposition :", opts:["toujours correct","jamais correct","correct au passé","correct avec unless"], a:1, x:"Jamais « if it will rain ». If + présent !"},
   {t:"gap", q:"___ you hurry, you'll miss your flight.", opts:["If","When","Unless","Until"], a:2, x:"Unless = à moins que (= if you don't hurry)."},
   {t:"gap", q:"The phone is ringing! — OK, I ___ answer it.", opts:["am going to","will","going to","would"], a:1, x:"Décision prise à l'instant → will (I'll)."},
   {t:"qcm", q:"« I'm flying to Rome on Tuesday » exprime :", opts:["une hypothèse","un arrangement déjà fixé","un rêve","une obligation"], a:1, x:"Présent continu pour un futur organisé (billet en poche)."},
   {t:"build", q:"Traduisez : « Je m'en occupe » (promesse spontanée)", words:["I","will","take","care","of","it"], extra:["going","make"], x:"To take care of = s'occuper de. Will pour la promesse spontanée."},
   {t:"listen", say:"If the weather is bad, the flight will probably be delayed", q:"Que se passera-t-il si la météo est mauvaise ?", opts:["Le vol sera probablement retardé","Le vol sera annulé","Le vol partira à l'heure","Le vol sera dérouté"], a:0, x:"Will probably be delayed = sera probablement retardé."},
   {t:"gap", q:"When the plane ___, I'll send you a message.", opts:["will land","lands","is landing","landed"], a:1, x:"Après when (futur) → présent simple, pas will."},
   {t:"listen", say:"I think there will be a lot of traffic, so leave early", q:"Quel conseil est donné ?", opts:["Partir tôt à cause du trafic","Prendre le train","Annuler le voyage","Partir plus tard"], a:0, x:"There will be a lot of traffic = il y aura beaucoup de circulation. Leave early = pars tôt."},
   {t:"qcm", q:"« I'll have finished by Friday » signifie :", opts:["Je finirai vendredi peut-être","J'aurai fini d'ici vendredi","Je finis tous les vendredis","J'ai fini vendredi"], a:1, x:"Will have + participe = futur antérieur. By Friday = d'ici vendredi."}
  ]},
 { id:"b1l3", title:"Modaux & conseils", sub:"Should, must, have to, may, might",
  fiche:{ intro:"Les modaux expriment le conseil, l'obligation, l'interdiction et la probabilité. Essentiels pour informer un passager de ses obligations... poliment mais fermement.",
   secs:[
    {h:"Conseil et obligation", v:[
     ["You should take a taxi.","Should = conseil (tu devrais)"],
     ["You must show your ID.","Must = obligation forte (émanant de celui qui parle)"],
     ["You have to check in before 9.","Have to = obligation externe (règlement)"],
     ["You mustn't smoke here.","Mustn't = interdiction"],
     ["You don't have to print it.","Don't have to = pas obligé (≠ interdit !)"]
    ]},
    {h:"Probabilité et permission", v:[
     ["It may / might rain later.","May/might = peut-être (might = moins sûr)"],
     ["May I ask you a question?","May I...? = permission très polie"],
     ["That can't be true!","Can't = impossibilité logique"],
     ["It must be the pilot.","Must = déduction logique (ça doit être...)"]
    ]}],
   phr:[
    ["Passengers must present a valid passport.","Les passagers doivent présenter un passeport valide."],
    ["You should arrive two hours before departure.","Vous devriez arriver deux heures avant le départ."],
    ["Liquids mustn't exceed 100 ml.","Les liquides ne doivent pas dépasser 100 ml."]]},
  q:[
   {t:"gap", q:"You look tired. You ___ rest.", opts:["should","must to","have","may to"], a:0, x:"Conseil → should + base verbale."},
   {t:"gap", q:"Passengers ___ show their ID at the gate.", opts:["should","must","might","can't"], a:1, x:"Obligation réglementaire → must."},
   {t:"qcm", q:"« You don't have to pay » signifie :", opts:["Vous ne devez pas payer (interdit)","Vous n'êtes pas obligé de payer","Vous ne pouvez pas payer","Il ne faut jamais payer"], a:1, x:"Don't have to = pas d'obligation. Interdiction = mustn't."},
   {t:"qcm", q:"« You mustn't smoke here » signifie :", opts:["Vous n'êtes pas obligé de fumer","Interdiction de fumer ici","Vous pouvez fumer dehors","Fumer est déconseillé"], a:1, x:"Mustn't = interdiction formelle."},
   {t:"gap", q:"Take an umbrella, it ___ rain later.", opts:["must","might","should","has to"], a:1, x:"Might = il se peut que (probabilité)."},
   {t:"build", q:"Traduisez : « Vous devriez arriver deux heures avant »", words:["You","should","arrive","two","hours","before"], extra:["must","early"], x:"Should = conseil professionnel classique en aéroport."},
   {t:"listen", say:"You must keep your boarding pass with you at all times", q:"Quelle est l'obligation ?", opts:["Garder sa carte d'embarquement sur soi","Montrer son passeport","Rester assis","Éteindre son téléphone"], a:0, x:"Must keep... at all times = garder en permanence."},
   {t:"gap", q:"___ I ask you a question?", opts:["Must","May","Should","Have"], a:1, x:"May I...? = permission polie (registre professionnel)."},
   {t:"listen", say:"Passengers with connecting flights might have to collect their luggage", q:"Que devront peut-être faire les passagers en correspondance ?", opts:["Récupérer leurs bagages","Changer de terminal","Repasser la sûreté","Attendre en salle"], a:0, x:"Might have to = devront peut-être. Collect luggage = récupérer les bagages."},
   {t:"qcm", q:"« That must be the captain » exprime :", opts:["une obligation","une déduction logique","un ordre","une interdiction"], a:1, x:"Must = « ça doit être » (j'en suis presque sûr)."}
  ]},
 { id:"b1l4", title:"Opinions & conversation", sub:"Donner son avis, accepter, refuser poliment",
  fiche:{ intro:"Objectif B1 : participer à une vraie conversation. Donner son opinion, être d'accord ou pas, nuancer, et éviter les faux amis qui piègent tous les francophones.",
   secs:[
    {h:"Donner son avis", v:[
     ["In my opinion... / I think that...","À mon avis... / Je pense que..."],
     ["I agree with you. / I totally agree.","Je suis d'accord. (agree est un VERBE : jamais « I am agree » !)"],
     ["I disagree. / I'm not sure about that.","Je ne suis pas d'accord. / Je n'en suis pas sûr."],
     ["You're right. / You're wrong.","Tu as raison. / Tu as tort."]
    ]},
    {h:"Faux amis à connaître", v:[
     ["actually = en fait","« actuellement » = currently"],
     ["eventually = finalement","« éventuellement » = possibly"],
     ["to attend a meeting = assister à","« attendre » = to wait"],
     ["a journey = un trajet","« une journée » = a day"],
     ["sensible = raisonnable","« sensible » = sensitive"],
     ["to rest = se reposer","« rester » = to stay"]
    ]},
    {h:"Politesse conversationnelle", v:[
     ["Would you like to join us?","Voudriez-vous vous joindre à nous ?"],
     ["I'd love to! / I'm afraid I can't.","Avec plaisir ! / Je crains de ne pas pouvoir."],
     ["Do you mind if I open the window?","Ça vous dérange si... ? (réponse « non » = OK !)"],
     ["Could you do me a favour?","Pourriez-vous me rendre un service ?"]
    ]}],
   phr:[
    ["I see what you mean, but I'm not sure I agree.","Je vois ce que tu veux dire, mais je ne suis pas sûr d'être d'accord."],
    ["That sounds like a good idea.","Ça a l'air d'une bonne idée."],
    ["To be honest, I'd rather stay home tonight.","Pour être honnête, je préférerais rester à la maison ce soir."]]},
  q:[
   {t:"qcm", q:"Comment dit-on « Je suis d'accord » ?", opts:["I am agree","I agree","I am according","I have agree"], a:1, x:"Agree est un verbe : I agree. LE piège des francophones !"},
   {t:"qcm", q:"« actually » signifie :", opts:["actuellement","en fait","activement","enfin"], a:1, x:"Actually = en fait. Actuellement = currently."},
   {t:"qcm", q:"« eventually » signifie :", opts:["éventuellement","finalement","rapidement","peut-être"], a:1, x:"Eventually = finalement, au bout du compte. Éventuellement = possibly."},
   {t:"gap", q:"Do you ___ if I sit here?", opts:["mind","matter","bother","care about"], a:0, x:"Do you mind if...? = ça vous dérange si... ?"},
   {t:"qcm", q:"« I'm afraid I can't come » est :", opts:["une expression de peur","un refus poli","une excuse médicale","une plainte"], a:1, x:"I'm afraid... = formule pour annoncer poliment une mauvaise nouvelle."},
   {t:"build", q:"Traduisez : « Je vois ce que tu veux dire »", words:["I","see","what","you","mean"], extra:["look","say"], x:"To see what someone means = comprendre l'idée de quelqu'un."},
   {t:"listen", say:"That sounds like a great idea, I'd love to join you", q:"Que répond la personne ?", opts:["Elle accepte avec enthousiasme","Elle refuse poliment","Elle hésite","Elle propose autre chose"], a:0, x:"I'd love to = avec grand plaisir."},
   {t:"gap", q:"I'd ___ take the early flight than arrive late.", opts:["prefer","rather","better","like"], a:1, x:"I'd rather + base verbale = je préférerais."},
   {t:"listen", say:"To be honest, I don't think that's a good idea", q:"Quelle est la position de la personne ?", opts:["Elle est contre l'idée","Elle est pour","Elle n'a pas d'avis","Elle demande plus d'infos"], a:0, x:"I don't think that's a good idea = désaccord poli."},
   {t:"qcm", q:"« a journey » c'est :", opts:["une journée","un journal","un trajet / voyage","un séjour"], a:2, x:"Journey = trajet. Une journée = a day. Faux ami classique."}
  ]},
 { id:"b1l5", title:"Problèmes de voyage", sub:"Réclamer, signaler, résoudre",
  fiche:{ intro:"Vol retardé, bagage perdu, réservation introuvable : savoir expliquer un problème et demander une solution. Vous serez bientôt de l'autre côté du comptoir — apprenez les deux rôles !",
   secs:[
    {h:"Signaler un problème", v:[
     ["There's a problem with my booking.","Il y a un problème avec ma réservation."],
     ["My luggage hasn't arrived.","Mes bagages ne sont pas arrivés."],
     ["I've missed my connection because of the delay.","J'ai raté ma correspondance à cause du retard."],
     ["My flight has been cancelled. What are my options?","Mon vol a été annulé. Quelles sont mes options ?"],
     ["I'd like to make a complaint.","Je voudrais faire une réclamation."]
    ]},
    {h:"Demander une solution", v:[
     ["Could you help me, please?","Pourriez-vous m'aider ?"],
     ["I'd like a refund / to change my ticket.","Je voudrais un remboursement / changer mon billet."],
     ["When is the next available flight?","Quand est le prochain vol disponible ?"],
     ["Who can I talk to about this?","À qui puis-je parler de cela ?"],
     ["Don't worry, we'll sort it out.","Ne vous inquiétez pas, on va régler ça."]
    ]}],
   phr:[
    ["Excuse me, my suitcase didn't arrive. Where is the lost luggage office?","Excusez-moi, ma valise n'est pas arrivée. Où est le service bagages ?"],
    ["I'm really sorry about the inconvenience.","Je suis vraiment désolé pour la gêne occasionnée."],
    ["Thank you for your patience.","Merci de votre patience."]]},
  q:[
   {t:"qcm", q:"« to make a complaint » :", opts:["faire un compliment","faire une réclamation","compléter un dossier","porter plainte au tribunal"], a:1, x:"A complaint = une réclamation. To complain = se plaindre."},
   {t:"gap", q:"I've missed my connection ___ of the delay.", opts:["cause","because","reason","since"], a:1, x:"Because of + nom = à cause de."},
   {t:"gap", q:"I'd like to ___ my ticket to a later flight.", opts:["change","exchange for","move on","transfer at"], a:0, x:"To change a ticket = changer un billet."},
   {t:"build", q:"Traduisez : « Quand est le prochain vol disponible ? »", words:["When","is","the","next","available","flight"], extra:["what","free"], x:"Available = disponible. Question clé après une annulation."},
   {t:"listen", say:"I'm sorry, there seems to be a problem with your reservation", q:"Que dit l'agent ?", opts:["La réservation semble avoir un problème","La réservation est confirmée","Le vol est complet","Le paiement a échoué"], a:0, x:"There seems to be = il semble y avoir."},
   {t:"gap", q:"My luggage ___ arrived. It's still in Madrid!", opts:["hasn't","didn't","isn't","haven't"], a:0, x:"Conséquence présente → present perfect : hasn't arrived."},
   {t:"qcm", q:"« We'll sort it out » signifie :", opts:["On va trier les bagages","On va régler le problème","On va vous sortir","On classe le dossier"], a:1, x:"To sort out = résoudre, régler. LA phrase rassurante du pro."},
   {t:"listen", say:"Please fill in this form and we will contact you within forty-eight hours", q:"Que doit faire le passager ?", opts:["Remplir un formulaire","Attendre 48 min","Rappeler demain","Payer des frais"], a:0, x:"Fill in a form = remplir un formulaire. Within 48 hours = sous 48 h."},
   {t:"gap", q:"Thank you ___ your patience.", opts:["of","for","about","to"], a:1, x:"Thank you FOR + nom."},
   {t:"qcm", q:"« the inconvenience » :", opts:["l'inconfort du siège","la gêne occasionnée","l'incompétence","le malentendu"], a:1, x:"« Sorry for the inconvenience » : l'excuse standard du transport aérien."}
  ]},
 { id:"b1l6", title:"Anglais au travail", sub:"Candidature, téléphone, e-mails simples",
  fiche:{ intro:"Postuler, téléphoner, écrire un e-mail professionnel simple : l'anglais du monde du travail, votre passeport pour un poste en aéroport.",
   secs:[
    {h:"Candidature et emploi", v:[
     ["to apply for a job — an application","postuler — une candidature"],
     ["a CV (resume US) — a cover letter","un CV — une lettre de motivation"],
     ["a job interview — to hire","un entretien d'embauche — embaucher"],
     ["skills — experience — training","compétences — expérience — formation"],
     ["full-time / part-time — a shift","temps plein / partiel — une vacation (horaires)"],
     ["salary — to be in charge of / responsible for","salaire — être chargé de / responsable de"]
    ]},
    {h:"Au téléphone", v:[
     ["Hello, this is Yohan from Skyward Airlines.","Allô, Yohan de Skyward Airlines à l'appareil."],
     ["Could I speak to Mr Brown, please?","Pourrais-je parler à M. Brown ?"],
     ["Hold on, please. / I'll put you through.","Ne quittez pas. / Je vous le passe."],
     ["Could you speak up? The line is bad.","Pouvez-vous parler plus fort ? La ligne est mauvaise."],
     ["Can I take a message? / I'll call back later.","Je prends un message ? / Je rappellerai."]
    ]},
    {h:"E-mail professionnel simple", v:[
     ["Dear Mr Brown, / Dear Madam,","Formule d'ouverture formelle"],
     ["I am writing to ask about...","Je vous écris pour demander..."],
     ["Could you please send me...?","Pourriez-vous m'envoyer... ?"],
     ["Best regards, / Kind regards,","Cordialement"]
    ]}],
   phr:[
    ["I would like to apply for the position of ground staff agent.","Je souhaite postuler au poste d'agent d'escale."],
    ["I have three years' experience in customer service.","J'ai trois ans d'expérience en relation client."],
    ["Thank you for your time. I look forward to hearing from you.","Merci pour votre temps. Dans l'attente de votre réponse."]]},
  q:[
   {t:"gap", q:"She's applying ___ a job at the airport.", opts:["to","for","at","on"], a:1, x:"To apply FOR a job."},
   {t:"gap", q:"He's responsible ___ the boarding process.", opts:["of","for","about","to"], a:1, x:"Responsible FOR (jamais « of » !)."},
   {t:"qcm", q:"« a cover letter » :", opts:["une lettre recommandée","une lettre de motivation","une enveloppe","une lettre de recouvrement"], a:1, x:"Cover letter = lettre de motivation qui « couvre » le CV."},
   {t:"qcm", q:"« a shift », au travail :", opts:["un changement de poste","une vacation / plage horaire","une prime","une pause"], a:1, x:"Morning shift, night shift : essentiel en aéroport (horaires décalés)."},
   {t:"build", q:"Traduisez : « Je voudrais postuler au poste d'agent d'escale »", words:["I","would","like","to","apply","for","the","position"], extra:["job","demand"], x:"Apply for the position of... = postuler au poste de..."},
   {t:"listen", say:"Hold on please, I'll put you through to the manager", q:"Que fait la standardiste ?", opts:["Elle transfère l'appel au responsable","Elle raccroche","Elle prend un message","Elle demande de rappeler"], a:0, x:"To put through = transférer un appel. Hold on = patientez."},
   {t:"gap", q:"I look forward to ___ from you.", opts:["hear","hearing","heard","be heard"], a:1, x:"Look forward to + verbe-ING. La formule de clôture des e-mails."},
   {t:"listen", say:"Can you tell me about your experience in customer service?", q:"Quelle question d'entretien est posée ?", opts:["Votre expérience en relation client","Vos prétentions salariales","Vos disponibilités","Vos langues parlées"], a:0, x:"Customer service = relation client / service client."},
   {t:"gap", q:"Could you ___ up, please? The line is really bad.", opts:["speak","talk","say","tell"], a:0, x:"To speak up = parler plus fort."},
   {t:"qcm", q:"On termine un e-mail pro par :", opts:["Bye bye","Kind regards","See you","Lots of love"], a:1, x:"Kind regards / Best regards = cordialement."}
  ]}
]},
{ id:"B2", code:"SK404", name:"Niveau B2 — Indépendant", sub:"CECRL : aisance, nuance, anglais professionnel", lessons:[
 { id:"b2l1", title:"Le passif & perfect continu", sub:"La voix des procédures et des durées",
  fiche:{ intro:"Le passif est LA voix de l'anglais professionnel et aéroportuaire (« Passengers are requested to... », « The flight has been cancelled »). Le present perfect continuous exprime une durée qui vient de s'écouler.",
   secs:[
    {h:"Le passif : be + participe passé", v:[
     ["The gate was changed at the last minute.","La porte a été changée. (was/were + participe)"],
     ["Your luggage is being loaded now.","Vos bagages sont en cours de chargement."],
     ["The flight has been delayed.","Le vol a été retardé. (present perfect passif)"],
     ["Passengers are requested to remain seated.","Les passagers sont priés de... (registre officiel)"],
     ["English is spoken all over the world.","On parle anglais partout (agent inconnu → passif)"]
    ]},
    {h:"Present perfect continuous", v:[
     ["I have been waiting for two hours!","J'attends depuis deux heures (et j'attends encore)"],
     ["She has been working here since May.","have/has been + verbe-ing : durée en cours"],
     ["It has been raining all day.","Insiste sur la durée / l'activité, pas le résultat"]
    ]}],
   phr:[
    ["All passengers are kindly requested to proceed to gate 12.","Tous les passagers sont priés de se rendre porte 12."],
    ["Your request is being processed.","Votre demande est en cours de traitement."],
    ["We have been trying to reach you all morning.","Nous essayons de vous joindre depuis ce matin."]]},
  q:[
   {t:"gap", q:"The flight ___ cancelled due to fog.", opts:["has been","has","have been","is being have"], a:0, x:"Present perfect passif : has been + participe."},
   {t:"gap", q:"Your luggage ___ loaded onto the plane right now.", opts:["is","is being","has","is been"], a:1, x:"Passif en cours : is being + participe."},
   {t:"qcm", q:"« Passengers are requested to... » est :", opts:["une question","une tournure passive officielle","une erreur","du langage familier"], a:1, x:"Le passif donne le ton neutre et formel des annonces."},
   {t:"gap", q:"I ___ waiting for my luggage for 45 minutes!", opts:["am been","have been","was be","have being"], a:1, x:"Have been + -ing = durée qui continue."},
   {t:"qcm", q:"« The decision was made by the captain » : qui a décidé ?", opts:["Personne","Le commandant de bord","Les passagers","On ne sait pas"], a:1, x:"By + agent = complément d'agent du passif."},
   {t:"build", q:"Traduisez : « Votre demande est en cours de traitement »", words:["Your","request","is","being","processed"], extra:["been","treating"], x:"Is being processed : passif progressif, très fréquent en relation client."},
   {t:"listen", say:"We are sorry to announce that flight SK four zero four has been diverted to Lyon", q:"Qu'est-il arrivé au vol ?", opts:["Il a été dérouté vers Lyon","Il a été annulé","Il est retardé à Lyon","Il a atterri à Paris"], a:0, x:"Diverted = dérouté. Has been diverted : passif."},
   {t:"gap", q:"She has been ___ at this airport since 2021.", opts:["work","worked","working","works"], a:2, x:"Has been + verbe-ING."},
   {t:"listen", say:"How long have you been learning English? — For about two years", q:"Depuis combien de temps apprend-elle l'anglais ?", opts:["2 mois","Environ 2 ans","12 ans","Depuis 2002"], a:1, x:"For about two years = depuis environ deux ans."},
   {t:"qcm", q:"Transformez au passif : « They clean the cabin every night »", opts:["The cabin cleans every night","The cabin is cleaned every night","The cabin was clean every night","The cabin is cleaning every night"], a:1, x:"Présent passif : is/are + participe passé."}
  ]},
 { id:"b2l2", title:"Hypothèses & regrets", sub:"Conditionnels 2 & 3, wish, should have",
  fiche:{ intro:"Imaginer l'irréel, exprimer un regret, faire un reproche élégant : les conditionnels 2 et 3, wish, et should have. Le niveau où votre anglais gagne en profondeur.",
   secs:[
    {h:"Conditionnel 2 (irréel présent)", v:[
     ["If I had more time, I would travel more.","If + prétérit, would + verbe"],
     ["If I were you, I would accept the job.","If I were you = à ta place (were pour tous !)"],
     ["What would you do if you won the lottery?","Situation imaginaire"]
    ]},
    {h:"Conditionnel 3 (irréel passé)", v:[
     ["If you had called me, I would have helped you.","If + past perfect, would have + participe"],
     ["If the flight hadn't been delayed, we would have arrived on time.","Le passé qu'on ne peut plus changer"],
     ["Had I known, I would have told you.","Inversion soutenue = If I had known"]
    ]},
    {h:"Regrets et reproches", v:[
     ["I wish I spoke better English.","Wish + prétérit = regret présent"],
     ["I wish I had studied harder.","Wish + past perfect = regret passé"],
     ["You should have checked the gate number.","Should have + participe = tu aurais dû"],
     ["It's high time we left.","It's (high) time + prétérit"]
    ]}],
   phr:[
    ["If I were you, I would arrive earlier.","À votre place, j'arriverais plus tôt."],
    ["I should have double-checked the schedule.","J'aurais dû revérifier les horaires."],
    ["I wish I could help you, but the flight is full.","J'aimerais pouvoir vous aider, mais le vol est complet."]]},
  q:[
   {t:"gap", q:"If I ___ more money, I would buy a house.", opts:["have","had","would have","has"], a:1, x:"Conditionnel 2 : if + prétérit."},
   {t:"gap", q:"If you had told me earlier, I ___ helped you.", opts:["would","would have","will have","had"], a:1, x:"Conditionnel 3 : would have + participe."},
   {t:"gap", q:"If I ___ you, I would take that job.", opts:["was","am","were","be"], a:2, x:"If I were you : « were » pour toutes les personnes (subjonctif)."},
   {t:"qcm", q:"« I wish I knew the answer » exprime :", opts:["un souhait futur","un regret sur le présent","une certitude","une demande"], a:1, x:"Wish + prétérit = je regrette de ne pas savoir (maintenant)."},
   {t:"gap", q:"You ___ have checked the departure board!", opts:["should","must","would","will"], a:0, x:"Should have + participe = reproche : tu aurais dû."},
   {t:"build", q:"Traduisez : « J'aurais dû vérifier deux fois »", words:["I","should","have","checked","twice"], extra:["must","verify"], x:"Should have checked = j'aurais dû vérifier."},
   {t:"listen", say:"Had I known about the strike, I would have taken the train", q:"Que signifie la phrase ?", opts:["Si j'avais su pour la grève, j'aurais pris le train","Je savais pour la grève et j'ai pris le train","Je prendrai le train à cause de la grève","Le train était en grève"], a:0, x:"Had I known = If I had known (inversion soutenue)."},
   {t:"gap", q:"I wish I ___ harder when I was at school.", opts:["studied","had studied","would study","study"], a:1, x:"Regret sur le passé → wish + past perfect."},
   {t:"listen", say:"What would you do if a passenger refused to board?", q:"Quelle situation est imaginée ?", opts:["Un passager qui refuse d'embarquer","Un passager en retard","Un vol annulé","Un bagage perdu"], a:0, x:"Refused to board = refusait d'embarquer. Question d'entretien classique !"},
   {t:"qcm", q:"« It's high time we left » signifie :", opts:["Il est tôt","Il est grand temps de partir","Nous sommes partis à l'heure","Le temps passe vite"], a:1, x:"It's high time + prétérit : il est grand temps que..."}
  ]},
 { id:"b2l3", title:"Le discours rapporté", sub:"Reported speech : rapporter fidèlement",
  fiche:{ intro:"Rapporter les paroles d'un passager, d'un collègue, d'un supérieur : le reported speech impose un recul des temps (backshift) et des changements de repères. Compétence pro par excellence.",
   secs:[
    {h:"Le recul des temps", v:[
     ["“I am tired” → He said (that) he was tired.","présent → prétérit"],
     ["“I lost my bag” → She said she had lost her bag.","prétérit → past perfect"],
     ["“I will call you” → He said he would call me.","will → would ; can → could ; must → had to"],
     ["“I'm flying tomorrow” → ...the next day.","tomorrow → the next day ; here → there ; now → then"]
    ]},
    {h:"Rapporter questions et ordres", v:[
     ["She asked me where the gate was.","Question : ordre sujet-verbe normal, pas d'inversion !"],
     ["He asked if the flight was on time.","Question fermée → if/whether"],
     ["The agent told him to wait at the desk.","Ordre : tell someone TO + verbe"],
     ["She asked me not to leave my bag there.","Ordre négatif : not to + verbe"],
     ["say vs tell : say something / tell someone","He said (that)... / He told ME (that)..."]
    ]}],
   phr:[
    ["The passenger said that he had lost his boarding pass.","Le passager a dit qu'il avait perdu sa carte d'embarquement."],
    ["She asked me if there was an earlier flight.","Elle m'a demandé s'il y avait un vol plus tôt."],
    ["The supervisor told us to open another desk.","Le superviseur nous a dit d'ouvrir un autre comptoir."]]},
  q:[
   {t:"gap", q:"“I am happy” → She said she ___ happy.", opts:["is","was","were","has been"], a:1, x:"Présent → prétérit (backshift)."},
   {t:"gap", q:"“I will help you” → He said he ___ help me.", opts:["will","would","can","should"], a:1, x:"Will → would."},
   {t:"gap", q:"“I lost my passport” → She said she ___ her passport.", opts:["lost","has lost","had lost","was losing"], a:2, x:"Prétérit → past perfect : had lost."},
   {t:"qcm", q:"Rapportez : « Where is the gate? » → She asked me...", opts:["where was the gate","where is the gate","where the gate was","where the gate is?"], a:2, x:"Question rapportée : ordre normal sujet-verbe, sans inversion ni « ? »."},
   {t:"gap", q:"He asked ___ the flight was on time.", opts:["that","if","what","does"], a:1, x:"Question fermée (oui/non) → if/whether."},
   {t:"qcm", q:"Say ou tell ? « He ___ me the truth »", opts:["said","told","said to","spoke"], a:1, x:"Tell + personne. Say + chose (he said the truth ❌ → he told me the truth ✅)."},
   {t:"build", q:"Rapportez l'ordre : « Wait here » → The agent told him...", words:["to","wait","here"], extra:["that","waiting"], x:"Tell someone TO + base verbale."},
   {t:"listen", say:"The passenger said that his luggage had been damaged during the flight", q:"Que rapporte-t-on ?", opts:["Le bagage du passager a été endommagé","Le passager a perdu son bagage","Le vol a été retardé","Le passager a cassé un objet"], a:0, x:"Had been damaged = avait été endommagé (passif + backshift)."},
   {t:"listen", say:"She asked me not to leave my suitcase unattended", q:"Que lui a-t-on demandé ?", opts:["De ne pas laisser sa valise sans surveillance","De laisser sa valise ici","D'ouvrir sa valise","D'enregistrer sa valise"], a:0, x:"Asked me not to leave = m'a demandé de ne pas laisser."},
   {t:"gap", q:"“I can't come tomorrow” → She said she couldn't come ___.", opts:["tomorrow","the next day","yesterday","that day"], a:1, x:"Tomorrow → the next day / the following day."}
  ]},
 { id:"b2l4", title:"Phrasal verbs & idiomes", sub:"L'anglais tel qu'on le parle vraiment",
  fiche:{ intro:"Les phrasal verbs (verbe + particule) sont partout dans l'anglais oral et professionnel. En maîtriser 30 change votre compréhension. Sélection spéciale voyage & travail.",
   secs:[
    {h:"Phrasal verbs du quotidien pro", v:[
     ["to find out = découvrir, apprendre","I'll find out the gate number."],
     ["to figure out = comprendre, résoudre","We figured out the problem."],
     ["to deal with = gérer, traiter","She deals with complaints all day."],
     ["to sort out = régler, arranger","Don't worry, I'll sort it out."],
     ["to set up = organiser, mettre en place","They set up a new procedure."],
     ["to carry out = effectuer, réaliser","Security checks are carried out daily."]
    ]},
    {h:"Phrasal verbs du voyage", v:[
     ["to take off = décoller / to check in = s'enregistrer","The plane takes off at noon."],
     ["to pick up = récupérer, aller chercher","Pick up your luggage at carousel 4."],
     ["to drop off = déposer","Drop off your bags at the counter."],
     ["to put off = reporter / to call off = annuler","The meeting was put off / called off."],
     ["to run out of = être à court de","We're running out of time."],
     ["to turn down = refuser / to turn up = arriver, se pointer","She turned down the offer."]
    ]},
    {h:"Idiomes utiles", v:[
     ["once in a blue moon = très rarement","He flies once in a blue moon."],
     ["to be on the same page = être d'accord","Let's make sure we're on the same page."],
     ["at the last minute = à la dernière minute","They changed the gate at the last minute."],
     ["to keep an eye on = surveiller","Keep an eye on your belongings."]
    ]}],
   phr:[
    ["Could you find out when the next flight leaves?","Pourriez-vous vous renseigner sur le prochain vol ?"],
    ["We need to deal with this issue right away.","Nous devons traiter ce problème immédiatement."],
    ["The flight was called off due to the storm.","Le vol a été annulé à cause de la tempête."]]},
  q:[
   {t:"qcm", q:"« to run out of » :", opts:["sortir en courant","être à court de","s'échapper","dépasser"], a:1, x:"We've run out of coffee = plus de café."},
   {t:"qcm", q:"« to call off » :", opts:["rappeler","annuler","crier","raccrocher"], a:1, x:"Call off = cancel = annuler."},
   {t:"gap", q:"The meeting was put ___ until next Monday.", opts:["away","off","down","out"], a:1, x:"Put off = reporter."},
   {t:"gap", q:"You can pick ___ your luggage at carousel 3.", opts:["off","up","on","out"], a:1, x:"Pick up = récupérer. Drop off = déposer."},
   {t:"qcm", q:"« to deal with a problem » :", opts:["négocier un prix","gérer un problème","distribuer","conclure un marché"], a:1, x:"Deal with = traiter, gérer."},
   {t:"build", q:"Traduisez : « Je vais me renseigner » (découvrir l'info)", words:["I","will","find","out"], extra:["search","look"], x:"To find out = découvrir/obtenir une information."},
   {t:"listen", say:"The flight was called off at the last minute due to a technical issue", q:"Que s'est-il passé ?", opts:["Vol annulé au dernier moment pour problème technique","Vol retardé d'une minute","Vol dérouté","Dernier appel du vol"], a:0, x:"Called off = annulé. At the last minute = au dernier moment."},
   {t:"gap", q:"She turned ___ the job offer because of the schedule.", opts:["off","down","away","up"], a:1, x:"Turn down = refuser. Turn off = éteindre."},
   {t:"listen", say:"Please keep an eye on your personal belongings at all times", q:"Que demande l'annonce ?", opts:["De surveiller ses affaires personnelles","De fermer les yeux","De garder ses lunettes","De ranger ses affaires"], a:0, x:"Keep an eye on = garder un œil sur. Belongings = affaires."},
   {t:"qcm", q:"« We're on the same page » :", opts:["Nous lisons le même livre","Nous sommes d'accord / alignés","Nous sommes au même étage","Nous avons le même planning"], a:1, x:"Idiome pro incontournable : être sur la même longueur d'onde."}
  ]},
 { id:"b2l5", title:"Argumenter & structurer", sub:"Connecteurs logiques, contraste, opinion nuancée",
  fiche:{ intro:"Le B2, c'est défendre un point de vue structuré : introduire, opposer, concéder, conclure. Ces connecteurs transforment des phrases simples en discours convaincant.",
   secs:[
    {h:"Opposer et concéder", v:[
     ["However, the price is quite high.","Cependant (début de phrase + virgule)"],
     ["Although it was late, we waited.","Bien que + proposition"],
     ["Despite the delay / In spite of the delay","Malgré + NOM (jamais + proposition !)"],
     ["Whereas / while = tandis que","He likes mornings whereas I prefer nights."],
     ["On the one hand... on the other hand...","D'un côté... de l'autre..."],
     ["Even though it's hard, it's worth it.","Même si (concession forte)"]
    ]},
    {h:"Ajouter, causer, conclure", v:[
     ["Moreover / Furthermore / In addition","De plus (registre formel)"],
     ["Therefore / As a result / Consequently","Par conséquent"],
     ["Due to / owing to + nom","En raison de"],
     ["To sum up / In conclusion","Pour résumer / en conclusion"],
     ["As far as I'm concerned...","En ce qui me concerne..."],
     ["Not only was he late, but he also forgot the file.","Not only + inversion : emphase"]
    ]}],
   phr:[
    ["Although the job is demanding, it is very rewarding.","Bien que le métier soit exigeant, il est très gratifiant."],
    ["The flight was delayed due to adverse weather conditions.","Le vol a été retardé en raison de conditions météo défavorables."],
    ["To sum up, both options have clear advantages.","Pour résumer, les deux options ont des avantages évidents."]]},
  q:[
   {t:"gap", q:"___ the fact that it was expensive, we bought it.", opts:["Although","Despite","However","Even"], a:1, x:"Despite + nom / groupe nominal. Although + proposition complète."},
   {t:"gap", q:"___ it was raining, the plane took off on time.", opts:["Despite","Although","However","In spite"], a:1, x:"Although + sujet + verbe."},
   {t:"qcm", q:"« whereas » :", opts:["tandis que","alors (conséquence)","partout où","puisque"], a:0, x:"Whereas exprime un contraste entre deux éléments."},
   {t:"qcm", q:"« therefore » :", opts:["cependant","par conséquent","de plus","au contraire"], a:1, x:"Therefore = donc, par conséquent."},
   {t:"gap", q:"The flight was cancelled ___ to the storm.", opts:["because","due","cause","reason"], a:1, x:"Due to + nom = en raison de."},
   {t:"gap", q:"Not only ___ he late, but he also lost the report.", opts:["is","was","did","been"], a:1, x:"Not only en tête de phrase → inversion : Not only was he..."},
   {t:"build", q:"Traduisez : « D'un côté c'est cher, de l'autre c'est rapide »", words:["On","one","hand","it","is","expensive","on","the","other","hand","it","is","fast"], extra:["side","but"], x:"On (the) one hand... on the other hand..."},
   {t:"listen", say:"To sum up, the advantages clearly outweigh the disadvantages", q:"Quelle est la conclusion ?", opts:["Les avantages l'emportent sur les inconvénients","Les inconvénients dominent","Le bilan est neutre","Il faut plus d'analyses"], a:0, x:"To outweigh = l'emporter sur. To sum up = pour résumer."},
   {t:"listen", say:"As far as I'm concerned, safety must always come first", q:"Que pense la personne ?", opts:["La sécurité doit toujours passer en premier","La sécurité coûte cher","Elle n'est pas concernée","La sécurité est excessive"], a:0, x:"As far as I'm concerned = en ce qui me concerne. Come first = passer en premier."},
   {t:"qcm", q:"« furthermore » :", opts:["plus loin","de plus","désormais","au-delà"], a:1, x:"Furthermore = moreover = de plus (formel)."}
  ]},
 { id:"b2l6", title:"Anglais pro avancé", sub:"E-mails formels, réunions, relation client experte",
  fiche:{ intro:"Le niveau attendu en entreprise internationale : e-mails impeccables, réunions, diplomatie. C'est l'anglais des compagnies aériennes — celui de votre futur quotidien.",
   secs:[
    {h:"E-mail formel complet", v:[
     ["Dear Sir or Madam, → Yours faithfully,","Destinataire inconnu"],
     ["Dear Mr Brown, → Yours sincerely,","Destinataire connu"],
     ["I am writing with regard to...","Je vous écris au sujet de..."],
     ["Please find attached the requested documents.","Veuillez trouver ci-joint..."],
     ["I would be grateful if you could...","Je vous serais reconnaissant de..."],
     ["Please do not hesitate to contact me.","N'hésitez pas à me contacter."],
     ["I look forward to hearing from you.","Dans l'attente de votre réponse."]
    ]},
    {h:"Diplomatie et réunions", v:[
     ["I'm afraid that won't be possible.","Je crains que ce ne soit pas possible."],
     ["Would you mind sending it again?","Cela vous ennuierait-il de le renvoyer ?"],
     ["I'll get back to you by Friday.","Je reviens vers vous d'ici vendredi."],
     ["Let's schedule a meeting to address this issue.","Planifions une réunion pour traiter ce sujet."],
     ["We apologise for any inconvenience caused.","Nous vous prions de nous excuser pour la gêne occasionnée."],
     ["Could you clarify what you mean by...?","Pourriez-vous préciser ce que vous entendez par... ?"]
    ]}],
   phr:[
    ["Thank you for bringing this to our attention.","Merci d'avoir porté cela à notre attention."],
    ["We are currently looking into the matter.","Nous examinons actuellement la question."],
    ["Should you require any further information, please let me know.","Pour toute information complémentaire, n'hésitez pas."]]},
  q:[
   {t:"gap", q:"Please find ___ the requested documents.", opts:["attached","joined","included in","linked"], a:0, x:"Please find attached = veuillez trouver ci-joint."},
   {t:"qcm", q:"E-mail à un inconnu (« Dear Sir or Madam ») : on termine par :", opts:["Yours sincerely","Yours faithfully","Best wishes","Cheers"], a:1, x:"Inconnu → faithfully. Nom connu → sincerely."},
   {t:"gap", q:"I would be ___ if you could send me the report.", opts:["thankful of","grateful","gratitude","pleased of"], a:1, x:"I would be grateful if you could... : formule de demande polie."},
   {t:"qcm", q:"« I'll get back to you » :", opts:["Je vous ramène","Je reviens vers vous","Je vous rends","Je recule"], a:1, x:"To get back to someone = recontacter avec une réponse."},
   {t:"gap", q:"We apologise ___ any inconvenience caused.", opts:["about","of","for","from"], a:2, x:"Apologise FOR + nom."},
   {t:"build", q:"Traduisez : « N'hésitez pas à me contacter »", words:["Please","do","not","hesitate","to","contact","me"], extra:["don't","call"], x:"La formule de clôture professionnelle par excellence."},
   {t:"listen", say:"Thank you for bringing this matter to our attention, we are currently looking into it", q:"Que répond le service client ?", opts:["Merci du signalement, nous examinons la question","Le problème est résolu","Ce n'est pas notre responsabilité","Veuillez rappeler plus tard"], a:0, x:"To look into = examiner, enquêter sur."},
   {t:"gap", q:"Would you mind ___ the file again?", opts:["send","to send","sending","sent"], a:2, x:"Would you mind + verbe-ING."},
   {t:"listen", say:"Should you require any further information, please do not hesitate to contact us", q:"Que propose ce message ?", opts:["De recontacter en cas de besoin d'informations","De payer un supplément","De patienter","De remplir un formulaire"], a:0, x:"Should you require = si vous avez besoin (inversion formelle)."},
   {t:"qcm", q:"« to address an issue » :", opts:["adresser un courrier","traiter un problème","donner une adresse","éviter un sujet"], a:1, x:"To address = s'attaquer à, traiter."}
  ]}
]},
{ id:"ESC", code:"SK555", name:"Agent d'escale — Formation Pro", sub:"8 modules alignés sur le référentiel métier", lessons:[
 { id:"esc1", title:"Le métier & l'environnement", sub:"Acteurs, zones, organismes DGAC/OACI/IATA",
  fiche:{ intro:"L'agent d'escale commerciale (passenger service agent) accueille, enregistre, embarque et assiste les passagers pour le compte des compagnies aériennes ou des sociétés d'assistance. Le métier s'exerce en horaires décalés (shifts), en uniforme, dans un cadre très réglementé par trois organismes : l'OACI (ONU de l'aviation), l'IATA (association des compagnies) et la DGAC (autorité française).",
   secs:[
    {h:"Les acteurs de l'aéroport", v:[
     ["ground staff / ground crew","personnel au sol (c'est vous !)"],
     ["cabin crew — flight attendant","personnel navigant commercial (PNC)"],
     ["the captain / the pilot — the co-pilot","le commandant de bord — le copilote"],
     ["a ramp agent / baggage handler","agent de piste / bagagiste"],
     ["air traffic control (ATC)","le contrôle aérien"],
     ["the handling agent / handling company","la société d'assistance aéroportuaire"],
     ["a supervisor — the station manager","un superviseur — le chef d'escale"]
    ]},
    {h:"Les zones et lieux", v:[
     ["landside / airside","zone publique / zone réservée (côté piste)"],
     ["the terminal — the concourse","le terminal — le hall / la jetée"],
     ["the check-in area — the boarding gate","la zone d'enregistrement — la porte"],
     ["the apron / the ramp / the tarmac","l'aire de trafic (stationnement avions)"],
     ["the runway — the taxiway","la piste — la voie de circulation"],
     ["the jet bridge / air bridge","la passerelle télescopique"],
     ["baggage claim — the carousel","la livraison bagages — le tapis"],
     ["security checkpoint — customs — immigration","filtrage sûreté — douane — police aux frontières"]
    ]},
    {h:"Codes IATA à connaître", v:[
     ["CDG — Paris Charles de Gaulle / ORY — Paris Orly","Chaque aéroport a un code de 3 lettres"],
     ["LHR London Heathrow / JFK New York / DXB Dubai","Les grands hubs mondiaux"],
     ["ETA / ETD — estimated time of arrival / departure","heure estimée d'arrivée / de départ"],
     ["STA / STD — scheduled time of arrival / departure","heure programmée"]
    ]}],
   phr:[
    ["Welcome to Paris Charles de Gaulle. How may I help you?","Bienvenue à Paris CDG. Comment puis-je vous aider ?"],
    ["I work as a passenger service agent for a handling company.","Je travaille comme agent d'escale pour une société d'assistance."],
    ["The aircraft is parked on stand B24.","L'avion est stationné au poste B24."]]},
  q:[
   {t:"qcm", q:"« ground staff » désigne :", opts:["le personnel navigant","le personnel au sol","les contrôleurs aériens","les mécaniciens"], a:1, x:"Ground = sol. Le PNC = cabin crew."},
   {t:"qcm", q:"« airside », c'est :", opts:["le côté hublot","la zone réservée côté piste","le parking public","la zone duty-free uniquement"], a:1, x:"Airside = zone à accès réglementé (après le filtrage). Landside = zone publique."},
   {t:"qcm", q:"La passerelle qui relie le terminal à l'avion :", opts:["the runway","the jet bridge","the carousel","the taxiway"], a:1, x:"Jet bridge / air bridge = passerelle télescopique."},
   {t:"gap", q:"The aircraft is parked on the ___, near gate B12.", opts:["runway","apron","carousel","concourse"], a:1, x:"Apron / ramp / tarmac = aire de stationnement. La runway sert au décollage/atterrissage."},
   {t:"qcm", q:"« ETD » signifie :", opts:["Extra Time Delay","Estimated Time of Departure","European Transport Division","Exit Terminal Door"], a:1, x:"ETD = heure estimée de départ. ETA = arrivée."},
   {t:"qcm", q:"Quel organisme regroupe les compagnies aériennes et édicte les standards commerciaux ?", opts:["la DGAC","l'OACI","l'IATA","l'ONU"], a:2, x:"IATA = association des compagnies (codes, DGR, billetterie). OACI = agence de l'ONU. DGAC = autorité française."},
   {t:"listen", say:"Please proceed to the security checkpoint with your boarding pass and ID", q:"Où le passager doit-il se rendre ?", opts:["Au poste d'inspection filtrage","À la douane","À la porte d'embarquement","Au comptoir de vente"], a:0, x:"Security checkpoint = filtrage sûreté (PIF). To proceed to = se rendre à."},
   {t:"build", q:"Traduisez : « Comment puis-je vous aider ? » (formule d'accueil)", words:["How","may","I","help","you"], extra:["can","do"], x:"« How may I help you? » : plus formel que « can », c'est LA formule d'accueil."},
   {t:"listen", say:"All passengers arriving from outside the Schengen area must go through immigration", q:"Qui doit passer la police aux frontières ?", opts:["Les passagers venant de hors-Schengen","Tous les passagers","Les passagers Schengen","Les équipages seulement"], a:0, x:"Immigration = contrôle des passeports (PAF). Schengen area = espace Schengen."},
   {t:"qcm", q:"Le code IATA de Paris Charles de Gaulle :", opts:["PAR","CDG","PCG","ORY"], a:1, x:"CDG. ORY = Orly. Les codes IATA font toujours 3 lettres."}
  ]},
 { id:"esc2", title:"Alphabet OACI & annonces", sub:"Épeler sans erreur, parler au micro",
  fiche:{ intro:"L'alphabet aéronautique (OACI/NATO) élimine toute confusion quand on épelle un nom, un dossier ou un siège — B et P, M et N s'entendent mal au téléphone ou en radio. Il est utilisé dans le monde entier. Les annonces au micro (PA announcements) suivent quant à elles des formules normalisées à connaître par cœur.",
   secs:[
    {h:"L'alphabet OACI complet", v:[
     ["A Alpha — B Bravo — C Charlie — D Delta","Se prononcent AL-fah, BRAH-voh, CHAR-lee, DELL-tah"],
     ["E Echo — F Foxtrot — G Golf — H Hotel","ECK-oh, FOKS-trot, GOLF, hoh-TELL"],
     ["I India — J Juliett — K Kilo — L Lima","IN-dee-ah, JEW-lee-ett, KEY-loh, LEE-mah"],
     ["M Mike — N November — O Oscar — P Papa","MIKE, no-VEM-ber, OSS-cah, pah-PAH"],
     ["Q Quebec — R Romeo — S Sierra — T Tango","keh-BECK, ROH-me-oh, see-AIR-rah, TANG-go"],
     ["U Uniform — V Victor — W Whiskey — X X-ray","YOU-nee-form, VIK-tah, WISS-key, ECKS-ray"],
     ["Y Yankee — Z Zulu","YANG-key, ZOO-loo"],
     ["9 = niner (en radio)","Pour ne pas confondre avec « nein » allemand ou 5"]
    ]},
    {h:"Structure d'une annonce", v:[
     ["May I have your attention, please?","Ouverture : votre attention s'il vous plaît"],
     ["This is a boarding call for flight SK555 to London.","Identification : le vol et la destination"],
     ["Passengers are kindly requested to proceed to gate A12.","L'action demandée (passif formel)"],
     ["Thank you. / We apologise for the inconvenience.","Clôture / excuses si irrégularité"]
    ]}],
   phr:[
    ["Your booking reference is Bravo-Kilo-Four-Two-Alpha-Papa.","Votre référence de réservation est BK42AP."],
    ["This is the final boarding call for flight SK555 to Rome.","Dernier appel pour l'embarquement du vol SK555 à destination de Rome."],
    ["Mr Smith, passenger on flight AF123, please contact the information desk.","M. Smith, passager du vol AF123, est prié de se présenter au comptoir d'information."]]},
  q:[
   {t:"qcm", q:"« B » en alphabet OACI :", opts:["Boston","Bravo","Beta","Baker"], a:1, x:"B = Bravo."},
   {t:"qcm", q:"« S » en alphabet OACI :", opts:["Sugar","Santiago","Sierra","Sam"], a:2, x:"S = Sierra."},
   {t:"qcm", q:"« Whiskey » correspond à la lettre :", opts:["V","W","Y","K"], a:1, x:"W = Whiskey. V = Victor, Y = Yankee."},
   {t:"listen", say:"Your booking reference is Charlie Delta seven three Tango Mike", q:"Quelle est la référence ?", opts:["CD73TM","CT73DM","CD37TM","DC73MT"], a:0, x:"Charlie=C, Delta=D, Tango=T, Mike=M → CD73TM."},
   {t:"listen", say:"Your seat is number two four Foxtrot", q:"Quel est le siège ?", opts:["24F","24V","2F4","42F"], a:0, x:"Two four Foxtrot = 24F."},
   {t:"build", q:"Épelez « PAX » en alphabet OACI", words:["Papa","Alpha","X-ray"], extra:["Peter","Apple"], x:"P = Papa, A = Alpha, X = X-ray. (PAX = abréviation de « passager » !)"},
   {t:"qcm", q:"En radio, « 9 » se prononce :", opts:["nine","niner","ninety","neuf"], a:1, x:"Niner, pour éviter toute confusion."},
   {t:"listen", say:"May I have your attention please. This is the final boarding call for flight SK five five five to Rome. All remaining passengers please proceed immediately to gate B eighteen", q:"Que demande l'annonce ?", opts:["Derniers passagers du vol pour Rome : porte B18 immédiatement","Vol pour Rome retardé porte 18","Embarquement ouvert pour Rome","Changement de porte : B80"], a:0, x:"Final boarding call = dernier appel. Proceed immediately = se rendre immédiatement."},
   {t:"gap", q:"Passengers are kindly ___ to proceed to gate A12.", opts:["requested","demanded","commanded","obliged"], a:0, x:"Kindly requested = formule officielle. « Demand » serait agressif en anglais !"},
   {t:"build", q:"Traduisez : « Votre attention, s'il vous plaît »", words:["May","I","have","your","attention","please"], extra:["give","get"], x:"L'ouverture de toute annonce micro."}
  ]},
 { id:"esc3", title:"L'enregistrement (check-in)", sub:"Documents, bagages, franchise, questions de sûreté",
  fiche:{ intro:"Le check-in : vérifier l'identité et les documents, enregistrer les bagages dans le système (ALTEA, Amadeus), appliquer la franchise, poser les questions de sûreté et attribuer les sièges. Les bornes libre-service (kiosks/BLS) et la dépose bagage automatique (DBA) transforment le métier, mais l'agent reste indispensable pour les cas particuliers.",
   secs:[
    {h:"Le déroulé du check-in", v:[
     ["May I see your passport and booking reference?","Puis-je voir votre passeport et votre référence ?"],
     ["How many bags are you checking in?","Combien de bagages enregistrez-vous ?"],
     ["Please place your suitcase on the scale / belt.","Posez votre valise sur la balance / le tapis."],
     ["Would you prefer a window or an aisle seat?","Hublot ou couloir ? (aisle se prononce « aïl »)"],
     ["Here is your boarding pass and your baggage receipt.","Voici votre carte d'embarquement et votre reçu bagage."],
     ["Boarding starts at 9:40 at gate C22. The gate closes at 10:10.","Embarquement 9 h 40 porte C22, fermeture 10 h 10."]
    ]},
    {h:"Bagages et franchise", v:[
     ["baggage allowance — a piece of luggage","franchise bagage — un bagage (luggage : jamais de -s !)"],
     ["checked/hold baggage vs carry-on/hand luggage","soute vs cabine"],
     ["overweight — oversized — excess baggage fee","trop lourd — hors format — frais d'excédent"],
     ["a baggage tag — a priority label","une étiquette bagage — une étiquette prioritaire"],
     ["fragile items — sports equipment","objets fragiles — équipement sportif"],
     ["self-service kiosk — bag drop","borne libre-service (BLS) — dépose bagage (DBA)"]
    ]},
    {h:"Les questions de sûreté obligatoires", v:[
     ["Did you pack your bags yourself?","Avez-vous fait vos bagages vous-même ?"],
     ["Has anyone given you anything to carry?","Vous a-t-on remis quelque chose à transporter ?"],
     ["Have your bags been with you at all times?","Vos bagages sont-ils restés avec vous en permanence ?"],
     ["Are you carrying any dangerous goods?","Transportez-vous des marchandises dangereuses ?"]
    ]}],
   phr:[
    ["I'm afraid your bag is four kilos over the limit. There will be an excess baggage fee of fifty euros.","Votre bagage dépasse de 4 kg. Des frais d'excédent de 50 € s'appliqueront."],
    ["Check-in closes forty minutes before departure.","L'enregistrement ferme 40 minutes avant le départ."],
    ["You can also use the self-service kiosks to save time.","Vous pouvez aussi utiliser les bornes libre-service pour gagner du temps."]]},
  q:[
   {t:"qcm", q:"« hold baggage », c'est :", opts:["le bagage cabine","le bagage en soute","le bagage en attente","le bagage retenu en douane"], a:1, x:"Hold = soute. Cabine = carry-on / hand luggage."},
   {t:"qcm", q:"« luggage » :", opts:["prend un -s au pluriel","ne prend jamais de -s","est toujours pluriel","signifie « valise » uniquement"], a:1, x:"Indénombrable : two pieces of luggage, jamais « two luggages »."},
   {t:"gap", q:"Your suitcase is 3 kilos ___. You'll need to pay a fee.", opts:["overweight","oversize","overdue","overbooked"], a:0, x:"Overweight = trop lourd. Oversized = hors format. Overdue = en retard (paiement)."},
   {t:"gap", q:"Would you prefer a window or an ___ seat?", opts:["exit","aisle","alley","edge"], a:1, x:"Aisle = couloir (prononcé « aïl », le s est muet)."},
   {t:"listen", say:"Did you pack your bags yourself, and has anyone given you anything to carry?", q:"Quelles questions de sûreté sont posées ?", opts:["Bagages faits soi-même + rien reçu à transporter","Poids et taille des bagages","Contenu fragile + assurance","Destination et durée du séjour"], a:0, x:"Les deux questions de sûreté réglementaires du check-in."},
   {t:"build", q:"Traduisez : « Veuillez poser votre valise sur la balance »", words:["Please","place","your","suitcase","on","the","scale"], extra:["put","balance"], x:"The scale = la balance. « Balance » en anglais = équilibre ou solde bancaire !"},
   {t:"qcm", q:"Un passager sans visa valide pour sa destination. Vous dites :", opts:["« It's not my problem »","« I'm afraid I can't check you in without a valid visa »","« Try another airline »","« OK, no problem »"], a:1, x:"Ferme sur la règle, courtois dans la forme. Un passager INAD coûte cher à la compagnie."},
   {t:"listen", say:"Here is your boarding pass, boarding starts at nine forty at gate C twenty-two", q:"Quelles informations sont données ?", opts:["Embarquement 9h40, porte C22","Décollage 9h40, porte 22","Enregistrement jusqu'à 9h40","Embarquement 4h29, porte C22"], a:0, x:"Boarding starts at 9:40, gate C22."},
   {t:"gap", q:"You can drop your bag at the self-service bag ___.", opts:["drop","fall","throw","leave"], a:0, x:"Bag drop = dépose bagage automatique (DBA)."},
   {t:"qcm", q:"« a baggage receipt », c'est :", opts:["la valise elle-même","le reçu remis au passager pour son bagage","l'étiquette collée sur le bagage","le chariot"], a:1, x:"Receipt = le talon/reçu remis au passager. Tag = l'étiquette sur le bagage."}
  ]},
 { id:"esc4", title:"Contrôle documentaire", sub:"Passeports, visas, Schengen, ESTA, INAD",
  fiche:{ intro:"Vérifier les documents de voyage est une responsabilité majeure : un passager inadmissible (INAD) refoulé à destination est réacheminé aux frais de la compagnie, avec amende. L'agent vérifie la validité du passeport, l'exigence de visa selon la destination et la nationalité, et la cohérence billet/identité.",
   secs:[
    {h:"Documents de voyage", v:[
     ["a valid passport — an expired passport","un passeport valide — périmé"],
     ["an ID card — a residence permit","une carte d'identité — un titre de séjour"],
     ["a visa — a transit visa — a work permit","un visa — visa de transit — permis de travail"],
     ["an ESTA (USA) / an eTA (Canada)","autorisations électroniques de voyage"],
     ["the expiry date — valid for six months beyond your stay","la date d'expiration — valable 6 mois après le séjour (règle fréquente)"],
     ["INAD (inadmissible passenger)","passager inadmissible (refoulé à l'arrivée)"]
    ]},
    {h:"Zones et formalités", v:[
     ["the Schengen area — a domestic flight","l'espace Schengen — un vol intérieur"],
     ["an international flight — a transit passenger","un vol international — un passager en transit"],
     ["to go through immigration / passport control","passer la police aux frontières"],
     ["to go through customs — nothing to declare","passer la douane — rien à déclarer"],
     ["a return ticket — proof of accommodation","un billet retour — un justificatif d'hébergement"]
    ]}],
   phr:[
    ["May I see your travel documents, please?","Puis-je voir vos documents de voyage ?"],
    ["I'm sorry, your passport expired last month. I cannot accept you on this flight.","Désolé, votre passeport a expiré le mois dernier. Je ne peux pas vous accepter sur ce vol."],
    ["For the United States, you need a valid ESTA authorisation.","Pour les États-Unis, il vous faut une autorisation ESTA valide."],
    ["Do you have a return or onward ticket?","Avez-vous un billet retour ou de continuation ?"]]},
  q:[
   {t:"qcm", q:"« an expired passport », c'est un passeport :", opts:["volé","périmé","étranger","en cours de renouvellement"], a:1, x:"Expired = expiré/périmé. Expiry date = date d'expiration."},
   {t:"qcm", q:"Un passager « INAD » est :", opts:["un passager prioritaire","un passager inadmissible refoulé à destination","un passager non enregistré","un enfant non accompagné"], a:1, x:"INADmissible : refoulé à l'arrivée, réacheminé aux frais de la compagnie."},
   {t:"gap", q:"Your passport must be valid for six months ___ your stay.", opts:["beyond","before","under","against"], a:0, x:"Valid for six months beyond = valable 6 mois au-delà du séjour."},
   {t:"qcm", q:"Pour un vol vers les USA, un ressortissant français a besoin :", opts:["d'un visa de travail","d'une autorisation ESTA valide","d'un simple billet retour","de rien du tout"], a:1, x:"ESTA = autorisation électronique obligatoire (programme d'exemption de visa)."},
   {t:"listen", say:"I'm sorry, but your passport expired two weeks ago, I cannot accept you on this flight", q:"Pourquoi le passager est-il refusé ?", opts:["Son passeport a expiré il y a deux semaines","Il n'a pas de visa","Son billet est invalide","Il est en retard"], a:0, x:"Expired two weeks ago = expiré il y a deux semaines."},
   {t:"gap", q:"Transit passengers do not go ___ customs.", opts:["through","across","by","along"], a:0, x:"To go through customs = passer la douane."},
   {t:"build", q:"Traduisez : « Puis-je voir vos documents de voyage ? »", words:["May","I","see","your","travel","documents"], extra:["watch","papers"], x:"Travel documents = passeport, visa, autorisations."},
   {t:"qcm", q:"Un vol Paris → Rome est :", opts:["un vol domestique","un vol intra-Schengen (pas de contrôle passeport systématique)","un vol international hors Schengen","un vol de transit"], a:1, x:"France et Italie sont dans l'espace Schengen : libre circulation."},
   {t:"listen", say:"Do you have a return ticket and proof of accommodation for your stay?", q:"Que demande l'agent ?", opts:["Billet retour et justificatif d'hébergement","Visa et vaccins","Adresse et téléphone","Moyens de paiement"], a:0, x:"Return ticket + proof of accommodation : exigences d'entrée fréquentes."},
   {t:"gap", q:"« Nothing to ___ » : le couloir vert de la douane.", opts:["declare","say","show","pay"], a:0, x:"Nothing to declare = rien à déclarer."}
  ]},
 { id:"esc5", title:"Passagers à particularités", sub:"UM, PMR, familles, animaux, cas spéciaux",
  fiche:{ intro:"Les « pax à particularités » demandent une prise en charge spécifique : mineurs non accompagnés (UM), passagers à mobilité réduite (PMR — règlement CE 1107/2006 : l'assistance est un droit gratuit), femmes enceintes, animaux, VIP... C'est là que l'agent d'escale montre tout son professionnalisme.",
   secs:[
    {h:"Codes et catégories", v:[
     ["UM / UMNR — unaccompanied minor","mineur non accompagné (dossier + remise signée)"],
     ["PRM — passenger with reduced mobility","PMR : assistance gratuite (règlement CE 1107/2006)"],
     ["WCHR / WCHS / WCHC","PMR : peut marcher / pas les escaliers / porté jusqu'au siège"],
     ["MEDA — medical case / expectant mother","cas médical / femme enceinte (certificat souvent exigé après 28 semaines)"],
     ["PETC — pet in cabin / AVIH — animal in hold","animal en cabine / en soute"],
     ["VIP / CIP — infant (INF) / child (CHD)","personnalité — bébé (-2 ans) / enfant (2-11 ans)"],
     ["SSR — special service request","demande de service spécial (dans le dossier de réservation)"]
    ]},
    {h:"Phrases d'assistance", v:[
     ["We will escort your child to the aircraft and hand him over to the crew.","Nous accompagnerons votre enfant jusqu'à l'avion et le confierons à l'équipage."],
     ["A wheelchair will be waiting for you at the gate.","Un fauteuil roulant vous attendra à la porte."],
     ["Would you like assistance to the aircraft?","Souhaitez-vous une assistance jusqu'à l'avion ?"],
     ["Families with young children may board first.","Les familles avec jeunes enfants peuvent embarquer en premier."],
     ["Your dog must travel in an approved container.","Votre chien doit voyager dans un contenant homologué."]
    ]}],
   phr:[
    ["Don't worry, madam, we will take good care of your son during the whole journey.","Ne vous inquiétez pas, nous prendrons bien soin de votre fils pendant tout le voyage."],
    ["Assistance for passengers with reduced mobility is free of charge.","L'assistance aux personnes à mobilité réduite est gratuite."],
    ["May I see the medical certificate, please?","Puis-je voir le certificat médical ?"]]},
  q:[
   {t:"qcm", q:"« UM » signifie :", opts:["Urgent Message","Unaccompanied Minor","Unknown Member","Upgraded Member"], a:1, x:"UM = mineur non accompagné : procédure d'accompagnement et de remise signée."},
   {t:"qcm", q:"L'assistance PMR est :", opts:["payante selon la compagnie","gratuite (règlement CE 1107/2006)","réservée à la classe affaires","facultative pour l'aéroport"], a:1, x:"C'est un droit gratuit garanti par le règlement européen CE 1107/2006."},
   {t:"qcm", q:"Le code « WCHC » désigne un passager :", opts:["qui peut marcher en cabine","porté jusqu'à son siège","avec un chien-guide","en correspondance"], a:1, x:"WCHC = le plus haut niveau d'assistance : porté jusqu'au siège. WCHR = peut marcher."},
   {t:"gap", q:"A wheelchair will be ___ for you at the arrival gate.", opts:["waiting","expecting","standing","holding"], a:0, x:"Will be waiting for you = vous attendra."},
   {t:"listen", say:"We will escort your daughter to the aircraft and hand her over to the cabin crew", q:"Que promet l'agent ?", opts:["Accompagner l'enfant et la confier à l'équipage","Surclasser l'enfant","Garder l'enfant au comptoir","Appeler les parents"], a:0, x:"To escort = accompagner. To hand over = remettre/confier (procédure UM)."},
   {t:"qcm", q:"« an infant » (INF) est un passager de :", opts:["moins de 2 ans","2 à 11 ans","moins de 18 ans","moins de 12 ans"], a:0, x:"Infant = moins de 2 ans (voyage souvent sur les genoux). Child (CHD) = 2-11 ans."},
   {t:"build", q:"Traduisez : « Souhaitez-vous une assistance jusqu'à l'avion ? »", words:["Would","you","like","assistance","to","the","aircraft"], extra:["want","help"], x:"Would you like...? = la proposition polie professionnelle."},
   {t:"listen", say:"Passengers travelling with infants and passengers requiring special assistance may board first", q:"Qui peut embarquer en premier ?", opts:["Familles avec bébés et passagers à assistance","Les VIP uniquement","Les passagers pressés","Les groupes"], a:0, x:"Le pré-embarquement : familles avec bébés + assistances spéciales."},
   {t:"gap", q:"After 28 weeks of pregnancy, a medical ___ is often required.", opts:["certificate","paper","letter","prescription"], a:0, x:"Medical certificate = certificat médical (femmes enceintes, selon compagnies)."},
   {t:"qcm", q:"« AVIH » désigne :", opts:["un animal en cabine","un animal en soute","un vol d'urgence","un bagage fragile"], a:1, x:"AVIH = animal in hold (soute). PETC = pet in cabin."}
  ]},
 { id:"esc6", title:"Embarquement & arrivée", sub:"Boarding, concordance pax/bag, débarquement",
  fiche:{ intro:"En porte, l'agent prépare la zone, annonce les priorités, scanne les cartes, gère les standby et les no-shows, et veille à la ponctualité (OTP). Règle de sûreté 11.2.3.8 : la concordance passagers/bagages — un bagage en soute dont le passager n'a pas embarqué doit être débarqué. À l'arrivée : débarquement, correspondances, remise des UM.",
   secs:[
    {h:"Le déroulé de l'embarquement", v:[
     ["Boarding is now open. — pre-boarding","L'embarquement est ouvert — le pré-embarquement"],
     ["priority boarding — boarding by groups/zones","embarquement prioritaire — par groupes/zones"],
     ["to scan the boarding pass","scanner la carte d'embarquement"],
     ["a standby passenger — a no-show","un passager en liste d'attente — un non-présenté"],
     ["This is the final call. — The gate is closed.","Dernier appel. — La porte est fermée."],
     ["fully boarded — ready for departure","embarquement terminé — prêt au départ"],
     ["on-time performance (OTP)","la ponctualité (indicateur clé du métier)"]
    ]},
    {h:"Sûreté & arrivée", v:[
     ["passenger/baggage reconciliation","la concordance passagers/bagages (11.2.3.8)"],
     ["to offload a bag / a passenger","débarquer un bagage / un passager"],
     ["disembarkation / deplaning","le débarquement"],
     ["a connecting flight — a tight connection","une correspondance — une correspondance courte"],
     ["the arrival hall — the meeting point","le hall d'arrivée — le point de rencontre"],
     ["a head count","un comptage des passagers"]
    ]}],
   phr:[
    ["We invite passengers seated in rows 20 to 35 to board now.","Nous invitons les passagers des rangées 20 à 35 à embarquer."],
    ["Mr Smith hasn't boarded. His bag must be offloaded before departure.","M. Smith n'a pas embarqué. Son bagage doit être débarqué avant le départ."],
    ["Passengers with a connecting flight to Berlin, please contact our transfer desk.","Passagers en correspondance pour Berlin, adressez-vous au comptoir de transfert."]]},
  q:[
   {t:"qcm", q:"« a no-show », c'est :", opts:["un vol sans écran","un passager qui ne s'est pas présenté","un refus d'embarquement","un spectacle annulé"], a:1, x:"No-show : sa place peut être donnée à un standby."},
   {t:"qcm", q:"Un passager enregistré avec bagage n'embarque pas. Que fait-on du bagage ?", opts:["Il part quand même","Il est débarqué (offloaded) avant le départ","Il est détruit","Il attend le vol suivant"], a:1, x:"Règle de concordance pax/bag (11.2.3.8) : un bagage ne voyage jamais sans son passager."},
   {t:"gap", q:"Mr Brown hasn't boarded. His bag must be ___ immediately.", opts:["offloaded","downloaded","unloaded off","dropped"], a:0, x:"To offload = débarquer un bagage/passager (terme métier)."},
   {t:"listen", say:"We now invite passengers seated in rows twenty to thirty-five to board", q:"Qui est invité à embarquer ?", opts:["Les rangées 20 à 35","Les rangées 25 à 30","Les groupes 2 et 3","Tous les passagers"], a:0, x:"Rows twenty to thirty-five = rangées 20 à 35 (embarquement par zones)."},
   {t:"gap", q:"The gate ___ twenty minutes before departure.", opts:["closes","closing","is close","shut"], a:0, x:"Horaire/règle → présent simple : the gate closes."},
   {t:"qcm", q:"« a tight connection », c'est :", opts:["une correspondance serrée (peu de temps)","un vol complet","une porte étroite","un lien fort"], a:0, x:"Tight = serré. Le passager en tight connection est prioritaire au débarquement."},
   {t:"build", q:"Traduisez : « L'embarquement est maintenant ouvert »", words:["Boarding","is","now","open"], extra:["opened","the"], x:"Boarding is now open : formule consacrée."},
   {t:"listen", say:"This is the final call for passenger John Smith, please proceed immediately to gate B twenty-two", q:"Que doit faire M. Smith ?", opts:["Se présenter immédiatement porte B22","Récupérer son bagage","Rappeler la compagnie","Attendre en zone B"], a:0, x:"Final call = dernier appel avant clôture du vol."},
   {t:"listen", say:"Passengers with a connecting flight to Berlin, please contact our transfer desk in the arrival hall", q:"Où doivent aller les passagers pour Berlin ?", opts:["Au comptoir de transfert du hall d'arrivée","À la porte B","Au tapis bagages","À la douane"], a:0, x:"Transfer desk = comptoir correspondances. Arrival hall = hall d'arrivée."},
   {t:"gap", q:"Before departure, the crew performs a head ___.", opts:["count","check","list","number"], a:0, x:"A head count = comptage des passagers à bord."}
  ]},
 { id:"esc7", title:"Irrégularités d'exploitation", sub:"Retards, annulations, surbooking, EU261, conflits",
  fiche:{ intro:"Retard, annulation, surréservation, correspondance manquée : c'est dans l'irrégularité que l'agent d'escale fait la différence. Réacheminer (rebooking), délivrer les prestations (bons repas, hôtel), informer sur le règlement EU261 (droits des passagers européens : assistance et indemnisation forfaitaire selon distance et durée du retard), et désamorcer la colère avec la méthode L.E.A.R.N : Listen, Empathise, Apologise, Resolve, Notify.",
   secs:[
    {h:"Vocabulaire des irrégularités", v:[
     ["a delay — delayed by two hours","un retard — retardé de deux heures"],
     ["cancelled — a cancellation","annulé — une annulation"],
     ["overbooking — denied boarding","surréservation — refus d'embarquement"],
     ["to rebook / rebooking — rerouting","réacheminer — réacheminement"],
     ["a missed connection","une correspondance manquée"],
     ["a meal voucher — hotel accommodation","un bon repas — un hébergement"],
     ["compensation — a refund","une indemnisation — un remboursement"],
     ["due to adverse weather / a technical issue / a strike","en raison de la météo / d'un problème technique / d'une grève"],
     ["to volunteer to take a later flight","se porter volontaire pour un vol ultérieur"]
    ]},
    {h:"Gérer un passager mécontent (LEARN)", v:[
     ["I completely understand your frustration.","Listen & Empathise : je comprends votre frustration"],
     ["I'm very sorry for the inconvenience.","Apologise : sincèrement désolé pour la gêne"],
     ["Let me see what I can do for you.","Resolve : voyons ce que je peux faire"],
     ["I'll keep you informed of any update.","Notify : je vous tiens informé"],
     ["Ne JAMAIS dire « Calm down! »","Ça aggrave toujours la situation — préférez l'écoute"]
    ]}],
   phr:[
    ["Your flight has been cancelled due to a technical issue. I can rebook you on the next available flight at 6 pm.","Votre vol a été annulé pour raison technique. Je peux vous réacheminer sur le prochain vol disponible à 18 h."],
    ["You are entitled to a meal voucher and, if necessary, hotel accommodation.","Vous avez droit à un bon repas et, si nécessaire, à un hébergement."],
    ["Under EU Regulation 261, you may be entitled to compensation.","Selon le règlement européen 261, vous pouvez avoir droit à une indemnisation."],
    ["Thank you for your patience and understanding.","Merci de votre patience et de votre compréhension."]]},
  q:[
   {t:"qcm", q:"« denied boarding » :", opts:["embarquement retardé","refus d'embarquement","porte fermée","embarquement prioritaire"], a:1, x:"Souvent lié au surbooking. Ouvre des droits (EU261) : indemnisation + réacheminement."},
   {t:"gap", q:"You are ___ to compensation under EU Regulation 261.", opts:["entitled","allowed","obliged","permitted"], a:0, x:"To be entitled to = avoir droit à. LA formule juridique du métier."},
   {t:"qcm", q:"Un passager furieux crie au comptoir. Votre PREMIÈRE réponse :", opts:["« Calm down, sir! »","« I understand, sir. Let me see what I can do for you. »","« It's not my fault. »","« Security! »"], a:1, x:"Méthode LEARN : écouter et compatir d'abord. « Calm down » aggrave toujours."},
   {t:"gap", q:"I can ___ you on the next available flight.", opts:["rebook","replace","rebuy","retake"], a:0, x:"To rebook = réacheminer sur un autre vol."},
   {t:"listen", say:"We are looking for volunteers willing to take a later flight in exchange for compensation", q:"Que cherche la compagnie ?", opts:["Des volontaires pour un vol plus tard contre compensation","Des passagers en retard","Du personnel supplémentaire","Des témoins d'un incident"], a:0, x:"En cas de surbooking, on cherche d'abord des volontaires. In exchange for = en échange de."},
   {t:"qcm", q:"Le règlement EU261 prévoit notamment :", opts:["des miles gratuits","assistance (repas, hôtel) et indemnisation forfaitaire selon les cas","un surclassement automatique","le remboursement des taxis uniquement"], a:1, x:"Assistance + indemnisation (montant selon distance et durée du retard à l'arrivée)."},
   {t:"build", q:"Traduisez : « Je comprends tout à fait votre frustration »", words:["I","completely","understand","your","frustration"], extra:["know","anger"], x:"La phrase d'ouverture de la désescalade (Listen + Empathise)."},
   {t:"listen", say:"Due to adverse weather conditions, your flight has been delayed by approximately three hours", q:"Que se passe-t-il ?", opts:["Vol retardé d'environ 3 h pour cause météo","Vol annulé pour 3 jours","Vol avancé de 3 h","Vol dérouté"], a:0, x:"Adverse weather = météo défavorable. Delayed by three hours = retardé de 3 h."},
   {t:"gap", q:"Here is a meal ___ while you wait for your new flight.", opts:["voucher","coupon bill","ticket pass","bond"], a:0, x:"A voucher = un bon (repas, hôtel, avoir)."},
   {t:"listen", say:"I'll keep you informed as soon as we have any update on the situation", q:"Que promet l'agent ?", opts:["De tenir le passager informé dès qu'il y a du nouveau","De rembourser immédiatement","De trouver un hôtel","D'appeler le pilote"], a:0, x:"Keep informed = tenir informé. Update = du nouveau. Le N de LEARN : Notify."}
  ]},
 { id:"esc8", title:"Litiges bagages & sûreté DGR", sub:"PIR, WorldTracer, articles interdits, marchandises dangereuses",
  fiche:{ intro:"Au service litiges bagages (baggage services), l'agent ouvre un dossier PIR (Property Irregularity Report) dans WorldTracer pour tout bagage retardé, endommagé ou pillé. Côté sûreté : connaître les articles interdits et les marchandises dangereuses (formation DGR IATA — les batteries au lithium sont l'enjeu n°1 aujourd'hui).",
   secs:[
    {h:"Litiges bagages", v:[
     ["delayed baggage — lost baggage","bagage retardé — bagage perdu"],
     ["damaged — pilfered","endommagé — pillé (objets volés à l'intérieur)"],
     ["a PIR (Property Irregularity Report)","le dossier d'irrégularité bagage"],
     ["WorldTracer","le système mondial de recherche de bagages"],
     ["a baggage tag number","le numéro d'étiquette (permet de tracer)"],
     ["Your bag will be delivered to your address.","Votre bagage sera livré à votre adresse."],
     ["first-need purchases / essentials","achats de première nécessité"]
    ]},
    {h:"Sûreté & marchandises dangereuses", v:[
     ["prohibited / restricted items","articles interdits / réglementés"],
     ["liquids over 100 ml — sharp objects","liquides de +100 ml — objets tranchants"],
     ["dangerous goods (DGR)","marchandises dangereuses (réglementation IATA)"],
     ["lithium batteries — power banks: cabin only!","batteries lithium — batteries externes : cabine uniquement, jamais en soute !"],
     ["flammable — explosive — compressed gas","inflammable — explosif — gaz comprimé"],
     ["unattended baggage","bagage sans surveillance"],
     ["to screen — screening","inspecter (filtrage) — l'inspection"]
    ]}],
   phr:[
    ["I'm sorry your suitcase didn't arrive. Let me open a file — may I see your baggage receipt?","Désolé, votre valise n'est pas arrivée. J'ouvre un dossier — puis-je voir votre reçu bagage ?"],
    ["Your bag has been located in Madrid. It will arrive on the next flight and be delivered to your hotel.","Votre bagage a été localisé à Madrid. Il arrivera par le prochain vol et sera livré à votre hôtel."],
    ["Power banks are not allowed in checked baggage. Please keep them in your hand luggage.","Les batteries externes sont interdites en soute. Gardez-les en cabine."],
    ["Please do not leave your baggage unattended at any time.","Ne laissez jamais vos bagages sans surveillance."]]},
  q:[
   {t:"qcm", q:"« a PIR », c'est :", opts:["un rapport d'incident de piste","le dossier d'irrégularité bagage","un badge d'accès","un type de visa"], a:1, x:"Property Irregularity Report : ouvert pour tout bagage manquant/endommagé."},
   {t:"qcm", q:"« pilfered baggage » :", opts:["bagage empilé","bagage pillé (objets dérobés)","bagage plié","bagage filtré"], a:1, x:"Pilfered = des objets ont été volés à l'intérieur du bagage."},
   {t:"qcm", q:"Les batteries externes (power banks) voyagent :", opts:["en soute uniquement","en cabine uniquement","en soute ou cabine","jamais en avion"], a:1, x:"Batteries lithium : JAMAIS en soute (risque incendie). Règle DGR essentielle."},
   {t:"gap", q:"Your bag has been ___ in Madrid. It will arrive tonight.", opts:["located","situated","tracked on","placed"], a:0, x:"To locate = localiser (via WorldTracer et le tag number)."},
   {t:"listen", say:"I'm sorry, your suitcase didn't arrive. May I see your baggage receipt so I can open a file?", q:"Que demande l'agent ?", opts:["Le reçu bagage pour ouvrir un dossier","Le passeport pour vérifier l'identité","De patienter au tapis","De payer des frais"], a:0, x:"Baggage receipt = le talon remis au check-in. Open a file = ouvrir un dossier (PIR)."},
   {t:"gap", q:"Liquids over 100 ml are not ___ in hand luggage.", opts:["allowed","availed","granted","approved of"], a:0, x:"Not allowed = interdit. La règle des 100 ml au filtrage."},
   {t:"build", q:"Traduisez : « Votre bagage sera livré à votre hôtel »", words:["Your","bag","will","be","delivered","to","your","hotel"], extra:["bring","send"], x:"Will be delivered : futur passif — la promesse type du service bagages."},
   {t:"listen", say:"For safety reasons, power banks and spare lithium batteries must be carried in the cabin only", q:"Quelle est la règle ?", opts:["Batteries externes et lithium : cabine uniquement","Batteries interdites partout","Batteries en soute uniquement","Une seule batterie par personne"], a:0, x:"Cabin only = cabine uniquement. Spare batteries = batteries de rechange."},
   {t:"qcm", q:"« dangerous goods » :", opts:["des passagers dangereux","des marchandises dangereuses","de mauvaises affaires","des bagages suspects"], a:1, x:"DGR = Dangerous Goods Regulations (IATA). Formation obligatoire du métier."},
   {t:"listen", say:"Attention please: do not leave your baggage unattended, unattended items will be removed and may be destroyed", q:"Que risque un bagage abandonné ?", opts:["D'être enlevé et détruit","D'être enregistré","D'être fouillé puis rendu","Une simple amende"], a:0, x:"Removed and may be destroyed : l'annonce sûreté diffusée dans tous les aéroports du monde."}
  ]}
]}
];

/* =====================================================================
   ÉTAT & PROGRESSION
===================================================================== */
let P = store.get("skwpro", { xp:0, streak:0, lastDay:null, lessons:{}, exams:{}, errors:[] });
if(!P.errors) P.errors=[]; if(!P.exams) P.exams={};
function saveP(){ store.set("skwpro", P); renderStats(); }
function today(){ return new Date().toISOString().slice(0,10); }
function bumpStreak(){
  const t=today(); if(P.lastDay===t) return;
  const y=new Date(Date.now()-864e5).toISOString().slice(0,10);
  P.streak=(P.lastDay===y)?P.streak+1:1; P.lastDay=t;
}
function renderStats(){
  document.getElementById("stXP").textContent=P.xp;
  document.getElementById("stStreak").textContent=P.streak;
}
function lvlProgress(lvl){
  const done=lvl.lessons.filter(l=>P.lessons[l.id]&&P.lessons[l.id].done).length;
  return Math.round(done/lvl.lessons.length*100);
}
function findQ(ref){ // ref = "lvlId|lesId|idx"
  const [lv,le,i]=ref.split("|");
  const lvl=DATA.find(x=>x.id===lv); if(!lvl) return null;
  const les=lvl.lessons.find(x=>x.id===le); if(!les) return null;
  return les.q[+i]||null;
}
function addError(ref){ if(!P.errors.includes(ref)) P.errors.push(ref); }
function removeError(ref){ const i=P.errors.indexOf(ref); if(i>-1) P.errors.splice(i,1); }

/* =====================================================================
   NAVIGATION
===================================================================== */
const V=document.getElementById("view");

function showHome(){
  try{speechSynthesis.cancel();}catch(e){}
  let rows="";
  DATA.forEach(lvl=>{
    const pct=lvlProgress(lvl);
    let st,cls;
    if(P.exams[lvl.id]){st="CERTIFIED";cls="st-cert";}
    else if(pct===100){st="EXAM RDY";cls="st-done";}
    else if(pct>0){st="BOARDING";cls="st-boarding";}
    else{st="ON TIME";cls="st-open";}
    rows+=`<div class="flight" onclick="showLevel('${lvl.id}')">
      <span class="code">${lvl.id}</span>
      <span class="dest">${esc(lvl.name)}<small>${esc(lvl.sub)}</small></span>
      <span class="pct">${pct}%</span>
      <span class="status ${cls}">${st}</span>
    </div>`;
  });
  const nErr=P.errors.length;
  V.innerHTML=`
    <h1 class="title">Bienvenue à bord ✈️</h1>
    <p class="sub">Formation complète alignée CECRL : démarre par les Fondamentaux (grand débutant), progresse de A1 à B2, valide chaque niveau par un examen, puis passe la formation Agent d'escale.</p>
    <div class="dep">
      <div class="head"><span>VOL</span><span>DESTINATION</span><span style="text-align:right">PROGR.</span><span style="text-align:center">STATUT</span></div>
      ${rows}
    </div>
    ${nErr?`<button class="bigbtn" onclick="startReview()"><span class="ico">🔁</span><span>Réviser mes erreurs<small>${nErr} question${nErr>1?"s":""} à retravailler — la clé de la mémorisation</small></span></button>`:""}
    <button class="bigbtn" onclick="showGuide()"><span class="ico">🧭</span><span>Comment progresser efficacement<small>Méthode, examens et certificats</small></span></button>
    ${!isPremiumVoice()?`<p class="sub" style="font-size:12.5px;margin-top:6px">🎙️ Astuce : télécharge une voix <b>Premium</b> gratuite pour un anglais quasi humain — voir « Comment progresser » point 5.</p>`:""}
    <p class="sub" style="font-size:12.5px;margin-top:6px">💡 Ajoute cette app à ton écran d'accueil (Partager → « Sur l'écran d'accueil ») pour l'utiliser comme une vraie app.</p>`;
  window.scrollTo(0,0);
}

function showGuide(){
  V.innerHTML=`
    <button class="back" onclick="showHome()">← Tableau des départs</button>
    <h1 class="title">Ta méthode de travail 🧭</h1>
    <div class="fiche">
    <div class="intro">Cette formation suit le référentiel européen CECRL et le programme du métier d'agent d'escale. Voici comment en tirer le maximum :</div>
    <h2>1. Dans l'ordre</h2>
    <div class="note">Commence par les Fondamentaux (F0) même si tu penses avoir le niveau : alphabet, nombres et premiers verbes portent tout le reste. Puis enchaîne A1 → B2 dans l'ordre. Chaque leçon = un cours à lire (avec audio 🔊) puis un quiz de 10 questions. Il faut 70 % pour valider une leçon.</div>
    <h2>2. L'examen de niveau</h2>
    <div class="note">Quand toutes les leçons d'un niveau sont validées, l'examen final se débloque : 20 questions tirées au hasard dans tout le niveau, 80 % requis. Réussi = niveau CERTIFIÉ sur ton tableau des départs. C'est ta preuve de progression réelle.</div>
    <h2>3. Révise tes erreurs</h2>
    <div class="note">Chaque question ratée est mémorisée. Le mode « Réviser mes erreurs » te les repropose : une question ratée puis réussie sort de la liste. C'est la répétition espacée, la méthode la plus efficace qui existe pour mémoriser.</div>
    <h2>4. L'oral, tous les jours</h2>
    <div class="note">Écoute chaque phrase 🔊 des fiches et répète-la À VOIX HAUTE. Utilise le bouton 🐢 pour ralentir. 15 minutes par jour battent 2 heures le dimanche : ta série 🔥 est là pour ça.</div>
    <h2>5. Obtenir une voix quasi humaine (gratuit)</h2>
    <div class="note">L'app utilise les voix de ton iPhone. Pour une voix naturelle de qualité Siri :<br><br>
    1. Ouvre <b>Réglages → Accessibilité → Contenu énoncé → Voix → Anglais</b><br>
    2. Choisis une voix et télécharge sa version <b>« Premium »</b> (ex. <b>Ava, Zoe ou Evan</b> pour l'accent américain, <b>Serena, Kate ou Oliver</b> pour l'accent britannique)<br>
    3. Reviens dans l'app et ferme-la/rouvre-la : elle détecte et utilise automatiquement la meilleure voix installée.<br><br>
    Voix utilisée en ce moment : <b>${esc(currentVoiceName())}</b> ${isPremiumVoice()?"✅ (haute qualité)":"⚠️ (standard — suis les étapes ci-dessus pour l'améliorer)"}</div>
    <h2>6. Objectif métier</h2>
    <div class="note">La formation Agent d'escale reprend les modules du programme réel (enregistrement, embarquement, documentation, PMR/UM, irrégularités, litiges bagages, sûreté). Apprends les phrases types par cœur : ce sont celles que tu diras au comptoir.</div>
    </div>`;
  window.scrollTo(0,0);
}

function showLevel(id){
  const lvl=DATA.find(l=>l.id===id);
  let cards="";
  lvl.lessons.forEach((les,i)=>{
    const pr=P.lessons[les.id]||{};
    const best=pr.best||0;
    const pct=Math.round(best/les.q.length*100);
    cards+=`<div class="pass" onclick="showFiche('${lvl.id}','${les.id}')">
      <div class="top">
        <span class="gate">GATE ${lvl.id}-${i+1} · COURS + QUIZ</span>
        <span class="score">${pr.done?"MEILLEUR "+pct+"%":"SIÈGE LIBRE"}</span>
      </div>
      <div class="body">
        <h3>${esc(les.title)}</h3>
        <p>${esc(les.sub)} · ${les.q.length} questions</p>
        <div class="bar"><i style="width:${pct}%"></i></div>
      </div>
      ${pr.done?'<span class="tick">✓ VALIDÉ</span>':''}
    </div>`;
  });
  const allDone=lvl.lessons.every(l=>P.lessons[l.id]&&P.lessons[l.id].done);
  const examCard=`<div class="pass exam" onclick="${allDone?`startExam('${lvl.id}')`:`alert('Valide d\\'abord toutes les leçons de ce niveau pour débloquer l\\'examen.')`}" ${allDone?"":'style="opacity:.5"'}>
      <div class="top">
        <span class="gate" style="color:var(--gold)">EXAMEN FINAL ${lvl.id}</span>
        <span class="score">${P.exams[lvl.id]?"🏅 CERTIFIÉ":(allDone?"DÉBLOQUÉ":"🔒 VERROUILLÉ")}</span>
      </div>
      <div class="body">
        <h3>Examen de validation ${esc(lvl.id)}</h3>
        <p>20 questions tirées de tout le niveau · 80 % requis</p>
      </div>
    </div>`;
  V.innerHTML=`
    <button class="back" onclick="showHome()">← Tableau des départs</button>
    <h1 class="title">${esc(lvl.name)}</h1>
    <p class="sub">${esc(lvl.sub)} — ${lvlProgress(lvl)}% complété</p>
    ${cards}${examCard}`;
  window.scrollTo(0,0);
}

/* =====================================================================
   FICHE DE COURS
===================================================================== */
function showFiche(lvlId,lesId){
  const lvl=DATA.find(l=>l.id===lvlId);
  const les=lvl.lessons.find(l=>l.id===lesId);
  const f=les.fiche;
  let html=`<button class="back" onclick="showLevel('${lvlId}')">← ${esc(lvl.name)}</button>
    <h1 class="title">${esc(les.title)}</h1>
    <p class="sub">${esc(les.sub)}</p>
    <div class="fiche">
    <div class="intro">${esc(f.intro)}</div>`;
  f.secs.forEach(s=>{
    html+=`<h2>${esc(s.h)}</h2>`;
    s.v.forEach(pair=>{
      html+=`<div class="vrow"><div><span class="en">${esc(pair[0])}</span></div>
        <span class="fr">${esc(pair[1])}</span>
        <button class="sp" data-say="${att(pair[0].replace(/—/g,', ').replace(/→/g,', then '))}">🔊</button></div>`;
    });
  });
  html+=`<h2>Phrases clés à répéter à voix haute</h2>`;
  f.phr.forEach(pair=>{
    html+=`<div class="phr">
      <div class="en"><span>${esc(pair[0])}</span><button class="sp" data-say="${att(pair[0])}">🔊</button></div>
      <div class="fr">${esc(pair[1])}</div></div>`;
  });
  html+=`</div>
    <div class="foot"><button class="btn btn-amber" onclick="startQuiz('${lvlId}','${lesId}')">Passer le quiz ✈️</button></div>`;
  V.innerHTML=html;
  window.scrollTo(0,0);
}

/* =====================================================================
   MOTEUR DE QUIZ (leçon, examen, révision)
===================================================================== */
let Q=null;

function startQuiz(lvlId,lesId){
  const lvl=DATA.find(l=>l.id===lvlId);
  const les=lvl.lessons.find(l=>l.id===lesId);
  const items=les.q.map((q,i)=>({q,ref:lvlId+"|"+lesId+"|"+i}));
  Q={mode:"lesson",lvlId,lesId,title:les.title,items,i:0,good:0,sel:null,built:[],locked:false};
  renderQ();
}
function startExam(lvlId){
  const lvl=DATA.find(l=>l.id===lvlId);
  let pool=[];
  lvl.lessons.forEach(les=>les.q.forEach((q,i)=>pool.push({q,ref:lvlId+"|"+les.id+"|"+i})));
  const items=shuffle(pool).slice(0,20);
  Q={mode:"exam",lvlId,title:"Examen "+lvlId,items,i:0,good:0,sel:null,built:[],locked:false};
  renderQ();
}
function startReview(){
  const items=shuffle(P.errors.slice()).slice(0,15).map(ref=>({q:findQ(ref),ref})).filter(x=>x.q);
  if(!items.length){showHome();return;}
  Q={mode:"review",title:"Révision des erreurs",items,i:0,good:0,sel:null,built:[],locked:false};
  renderQ();
}

function renderQ(){
  const it=Q.items[Q.i], q=it.q;
  const pct=Math.round(Q.i/Q.items.length*100);
  const labels={qcm:"Choisis la bonne réponse",gap:"Complète la phrase",build:"Construis la phrase",listen:"Compréhension orale"};
  let body="";
  if(q.t==="listen"){
    body+=`<button class="speakbtn" data-say="${att(q.say)}">🔊 Écouter la phrase</button>
      <button class="speakbtn slow" data-say="${att(q.say)}" data-rate="0.6">🐢 Réécouter lentement</button>`;
  }
  if(q.t==="qcm"||q.t==="gap"||q.t==="listen"){
    q.opts.forEach((o,idx)=>{
      body+=`<button class="opt ${Q.sel===idx?'sel':''}" id="opt${idx}" onclick="pick(${idx})">${esc(o)}</button>`;
    });
  }
  if(q.t==="build"){
    if(!Q.bank){Q.bank=shuffle(q.words.concat(q.extra||[]));}
    body+=`<div class="buildzone">${Q.built.map((w,i)=>`<button class="word" onclick="unpickWord(${i})">${esc(w)}</button>`).join("")}</div>
      <div class="wordbank">${Q.bank.map((w,i)=>{
        const used=Q.usedIdx&&Q.usedIdx.includes(i);
        return `<button class="word ${used?'used':''}" onclick="pickWord(${i})">${esc(w)}</button>`;
      }).join("")}</div>`;
  }
  const qtxt=q.t==="gap"?esc(q.q).replace(/___/g,'<span class="gapline"></span>'):esc(q.q);
  V.innerHTML=`
    <div class="qbar">
      <button class="quit" onclick="confirmQuit()">✕</button>
      <div class="qtrack"><i style="width:${pct}%"></i></div>
      <span class="qcount">${Q.i+1}/${Q.items.length}</span>
    </div>
    <div class="qtype">${Q.mode==="exam"?"🏅 Examen — ":""}${Q.mode==="review"?"🔁 Révision — ":""}${labels[q.t]}</div>
    <div class="qtext">${qtxt}</div>
    ${body}
    <div class="foot" id="footer">
      <button class="btn btn-amber" id="checkBtn" onclick="check()" ${canCheck()?"":"disabled"}>Vérifier</button>
    </div>`;
  if(q.t==="listen"){setTimeout(()=>speak(q.say),350);}
  window.scrollTo(0,0);
}

function canCheck(){
  const q=Q.items[Q.i].q;
  if(q.t==="build") return Q.built.length>0;
  return Q.sel!==null;
}
function pick(i){if(Q.locked)return;Q.sel=i;
  document.querySelectorAll(".opt").forEach((el,idx)=>el.classList.toggle("sel",idx===i));
  document.getElementById("checkBtn").disabled=false;
}
function pickWord(i){if(Q.locked)return;
  Q.usedIdx=Q.usedIdx||[];
  if(Q.usedIdx.includes(i))return;
  Q.usedIdx.push(i);Q.built.push(Q.bank[i]);renderQ();
}
function unpickWord(pos){if(Q.locked)return;
  const w=Q.built[pos];
  Q.built.splice(pos,1);
  for(const idx of Q.usedIdx){if(Q.bank[idx]===w){Q.usedIdx.splice(Q.usedIdx.indexOf(idx),1);break;}}
  renderQ();
}

function check(){
  if(Q.locked||!canCheck())return;
  const it=Q.items[Q.i], q=it.q;
  Q.locked=true;
  let good=false,correctTxt="";
  if(q.t==="build"){
    good=Q.built.join(" ").toLowerCase()===q.words.join(" ").toLowerCase();
    correctTxt=q.words.join(" ");
  }else{
    good=Q.sel===q.a;
    correctTxt=q.opts[q.a];
    const selEl=document.getElementById("opt"+Q.sel);
    const okEl=document.getElementById("opt"+q.a);
    if(selEl)selEl.classList.add(good?"good":"badd");
    if(okEl)okEl.classList.add("good");
  }
  if(good){Q.good++;P.xp+=10;if(Q.mode!=="exam")removeError(it.ref);}
  else{if(Q.mode!=="exam")addError(it.ref);}
  saveP();
  const enToSay=q.t==="build"?q.words.join(" "):(q.t==="listen"?q.say:null);
  const fb=`<div class="fb ${good?'good':'badd'}">
      <b>${good?"✅ Correct ! +10 XP":"❌ Pas tout à fait..."}</b>
      ${!good?`<div>Bonne réponse : <b style="display:inline">${esc(correctTxt)}</b></div>`:""}
      <div class="exp">${esc(q.x||"")}</div>
      ${enToSay?`<button class="btn btn-ghost" style="margin-top:10px;padding:10px;font-size:14px;width:auto" data-say="${att(enToSay)}">🔊 Écouter</button>`:""}
    </div>
    <button class="btn ${good?'btn-ok':'btn-bad'}" onclick="next()">Continuer</button>`;
  const footer=document.getElementById("footer");
  footer.innerHTML=fb;
  footer.scrollIntoView({behavior:"smooth",block:"end"});
}

function next(){
  Q.i++;Q.sel=null;Q.locked=false;Q.built=[];Q.bank=null;Q.usedIdx=null;
  if(Q.i>=Q.items.length){finish();}else{renderQ();}
}
function confirmQuit(){
  const dest=Q.mode==="review"?"showHome()":"showLevel(Q.lvlId)";
  if(confirm("Quitter ? Ta progression sur cette session sera perdue.")){
    if(Q.mode==="review")showHome();else showLevel(Q.lvlId);
  }
}

function finish(){
  const total=Q.items.length, score=Q.good, pct=Math.round(score/total*100);
  let passed, title, msg, extra="";
  if(Q.mode==="exam"){
    passed=pct>=80;
    if(passed){P.exams[Q.lvlId]=true;P.xp+=100;bumpStreak();
      extra=`<div class="cert"><div class="t">— CERTIFICAT SKYWARD —</div><h3>Niveau ${esc(Q.lvlId)} validé 🏅</h3><p style="color:var(--muted);font-size:13px">Examen réussi à ${pct}% · +100 XP</p></div>`;
    }
    title=passed?"Examen réussi !":"Examen à repasser";
    msg=passed?"Félicitations, ce niveau est officiellement certifié.":"Il faut 80 % pour valider l'examen. Révise tes erreurs et retente !";
  }else if(Q.mode==="review"){
    passed=true;
    title="Session de révision terminée";
    msg=`${score} erreur${score>1?"s":""} corrigée${score>1?"s":""} sur ${total}. ${P.errors.length?P.errors.length+" restent à retravailler.":"Plus aucune erreur en attente, bravo !"}`;
    if(score>0)bumpStreak();
  }else{
    passed=pct>=70;
    const pr=P.lessons[Q.lesId]||{best:0,done:false};
    if(score>pr.best)pr.best=score;
    if(passed){pr.done=true;P.xp+=20;bumpStreak();}
    P.lessons[Q.lesId]=pr;
    title=passed?"Atterrissage réussi !":"Vol à refaire";
    msg=passed?"Leçon validée. Excellent travail !":"Il faut au moins 70 % pour valider. Relis la fiche et réessaie !";
  }
  saveP();
  const backBtn=Q.mode==="review"
    ?`<button class="btn btn-ghost" onclick="showHome()">Retour à l'accueil</button>`
    :`<button class="btn btn-ghost" onclick="showLevel('${Q.lvlId}')">Retour aux leçons</button>`;
  const retryBtn=Q.mode==="lesson"
    ?`<button class="btn btn-amber" onclick="startQuiz('${Q.lvlId}','${Q.lesId}')" style="margin-bottom:10px">Recommencer la leçon</button>`
    :(Q.mode==="exam"&&!passed?`<button class="btn btn-amber" onclick="startExam('${Q.lvlId}')" style="margin-bottom:10px">Repasser l'examen</button>`:"");
  V.innerHTML=`<div class="result">
    <div class="big">${passed?(Q.mode==="exam"?"🏅":"🛬"):"🌀"}</div>
    ${extra}
    <h2>${title}</h2>
    <p>${msg}</p>
    <div class="medals">
      <div class="medal"><div class="v">${score}/${total}</div><div class="l">Score</div></div>
      <div class="medal"><div class="v">${pct}%</div><div class="l">Précision</div></div>
      <div class="medal"><div class="v">+${score*10+(Q.mode==="exam"&&passed?100:(Q.mode==="lesson"&&passed?20:0))}</div><div class="l">XP</div></div>
    </div>
    ${retryBtn}${backBtn}
  </div>`;
  window.scrollTo(0,0);
}

/* init */
renderStats();
showHome();
</script>
</body>
</html>
