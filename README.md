# Custom Heal-packs

### 📖 Description

마인크래프트에서 점수로 손쉽게 플레이어의 체력을 회복하는 기능.  
미리 점수를 부여하고 함수를 실행해야 합니다. (`scoreboard players set @s c.heal <int>`) **1 점수당 하트 1개**

> 불러오기: `function heal:load` | 삭제하기: `function heal:uninstall`

# ⚙️ 기능

## 1. 🩸 체력 회복

체력 회복은 서바이벌 및 크리에이티브에서도 정상적으로 적용됩니다.  
회복을 하기 전, 회복량을 지정해야 합니다. `(0도 상관없음)`

### 회복량

```javascript
    /scoreboard players set @s c.heal 1 // 1하트
```

적용 방법은 아래와 같습니다.

```javascript
    function heal:start
```
