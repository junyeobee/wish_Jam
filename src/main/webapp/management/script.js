// JavaScript 파일: script.js

// 데이터와 레이블 정의
const data = [10, 20, 30, 40, 50];
const labels = ['A', 'B', 'C', 'D', 'E'];

// 그래프를 생성할 HTML 요소 가져오기
const chart = document.getElementById('barChart');

// 최대 값 계산 (그래프의 비율을 맞추기 위함)
const maxDataValue = Math.max(...data);

// 막대그래프를 생성하는 함수
function drawBarChart() {
    // 데이터의 각 값에 대해 막대 생성
    data.forEach((value, index) => {
        // 막대를 생성
        const bar = document.createElement('div');
        bar.className = 'bar';
        // 막대의 높이 설정 (비율에 맞게 계산)
        bar.style.height = `${(value / maxDataValue) * 100}%`;

        // 레이블 추가
        const label = document.createElement('div');
        label.className = 'bar-label';
        label.textContent = labels[index];

        // 막대에 레이블 추가
        bar.appendChild(label);

        // 막대를 차트에 추가
        chart.appendChild(bar);
    });
}

// 그래프를 그리기
drawBarChart();
