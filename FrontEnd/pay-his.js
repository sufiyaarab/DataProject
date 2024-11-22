// Fetch payment data and populate the table
async function fetchPaymentData() {
    try {
      const response = await fetch('http://localhost:3000/data');
      const data = await response.json();
  
      const tableBody = document.getElementById('payment-table-body');
      tableBody.innerHTML = '';
  
      data.forEach(payment => {
        const row = document.createElement('tr');
        row.innerHTML = `
          <td>${payment.Payment_ID}</td>
          <td>${payment.Policy_Name}</td>
          <td>${payment.User_Name}</td>
          <td>$${payment.Payment_Amount}</td>
          <td>${new Date(payment.Payment_Date).toLocaleDateString()}</td>
          <td>${payment.Payment_Method}</td>
        `;
        tableBody.appendChild(row);
      });
  
      renderTrends(data); // Render trends after loading data
    } catch (error) {
      console.error('Error fetching payment data:', error);
    }
  }
  
  // Render the trends chart
  function renderTrends(data) {
    const ctx = document.getElementById('payment-trends-chart').getContext('2d');
  
    // Aggregate data by payment method
    const trends = data.reduce((acc, payment) => {
      acc[payment.Payment_Method] = (acc[payment.Payment_Method] || 0) + 1;
      return acc;
    }, {});
  
    const labels = Object.keys(trends);
    const values = Object.values(trends);
  
    new Chart(ctx, {
      type: 'bar',
      data: {
        labels: labels,
        datasets: [
          {
            label: 'Payment Trends by Method',
            data: values,
            backgroundColor: ['#007bff', '#28a745', '#ffc107', '#dc3545'],
          },
        ],
      },
      options: {
        responsive: true,
        plugins: {
          legend: {
            position: 'top',
          },
        },
      },
    });
  }
  
  // Download table as PDF
  function downloadPDF() {
    const { jsPDF } = window.jspdf;
    const pdf = new jsPDF();
  
    const table = document.getElementById('payment-table');
    pdf.text('Payment History Breakdown', 10, 10);
    pdf.autoTable({ html: table });
  
    pdf.save('Payment_History.pdf');
  }
  
  // Load payment data when the page is loaded
  window.onload = fetchPaymentData;  














