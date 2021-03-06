/**
 * @license
 * Fuse - Lightweight fuzzy-search
 *
 * Copyright (c) 2012 Kirollos Risk <kirollos@gmail.com>.
 * All Rights Reserved. Apache Software License 2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
!function(e){function t(e,t){function r(e,t){var r=e/h,n=Math.abs(o-t);return a?r+n/a:n?1:r}t=t||{};var o=t.location||n.location,a=t.distance||n.distance,i=t.threshold||n.threshold,s=t.maxPatternLength||n.maxPatternLength,e=t.caseSensitive?e:e.toLowerCase(),h=e.length;if(h>s)throw new Error("Pattern length is too long");var c=1<<h-1,f=function(){var t={},r=0;for(r=0;h>r;r++)t[e.charAt(r)]=0;for(r=0;h>r;r++)t[e.charAt(r)]|=1<<e.length-r-1;return t}();this.search=function(n){if(n=t.caseSensitive?n:n.toLowerCase(),e===n)return{isMatch:!0,score:0};var a,s,u,l,d,g,m,p,v,M=n.length,x=i,y=n.indexOf(e,o),w=h+M,L=1,b=[];for(-1!=y&&(x=Math.min(r(0,y),x),y=n.lastIndexOf(e,o+h),-1!=y&&(x=Math.min(r(0,y),x))),y=-1,a=0;h>a;a++){for(u=0,l=w;l>u;)r(a,o+l)<=x?u=l:w=l,l=Math.floor((w-u)/2+u);for(w=l,g=Math.max(1,o-l+1),m=Math.min(o+l,M)+h,p=Array(m+2),p[m+1]=(1<<a)-1,s=m;s>=g;s--)if(v=f[n.charAt(s-1)],p[s]=0===a?(p[s+1]<<1|1)&v:(p[s+1]<<1|1)&v|((d[s+1]|d[s])<<1|1)|d[s+1],p[s]&c&&(L=r(a,s-1),x>=L)){if(x=L,y=s-1,b.push(y),!(y>o))break;g=Math.max(1,2*o-y)}if(r(a+1,o)>x)break;d=p}return{isMatch:y>=0,score:L}}}function r(e,r){r=r||{};var n=r.keys||[];this.search=function(a){function i(e,t,r){void 0!==e&&null!==e&&"string"==typeof e&&(f=d.search(e),f.isMatch&&(l=M[r],l?l.score=Math.min(l.score,f.score):(M[r]={item:t,score:f.score},p.push(M[r]))))}var s,h,c,f,u,l,d=new t(a,r),g=e.length,m=n.length,p=[],v=0,M={},x=[];if("string"==typeof e[0])for(;g>v;v++)i(e[v],v,v);else for(;g>v;v++)for(c=e[v],h=0;m>h;h++)i(o.deepValue(c,n[h]),c,v);for(p.sort(function(e,t){return e.score-t.score}),u=p.length,s=0;u>s;s++)x.push(r.id?o.deepValue(p[s].item,r.id):p[s].item);return x}}var n={location:0,distance:100,threshold:.6,maxPatternLength:32},o={deepValue:function(e,t){for(var r=0,t=t.split("."),n=t.length;n>r;r++){if(!e)return null;e=e[t[r]]}return e}};"object"==typeof exports?module.exports=r:"function"==typeof define&&define.amd?define(function(){return r}):e.Fuse=r}(this);