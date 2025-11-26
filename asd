<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Calculadora de Producción</title>
<style>
  body { font-family: Arial, sans-serif; background: #f4f4f4; padding: 20px; }
  h1 { text-align: center; }
  table { width: 100%; border-collapse: collapse; margin-top: 20px; background: white; }
  th, td { padding: 10px; border: 1px solid #ccc; text-align: center; }
  th { background: #d1e7ff; }
  input { width: 80px; padding: 5px; }
  .req { background: #fff8a6; font-weight: bold; }
</style>
</head>
<body>
<h1>Calculadora de Materia Prima</h1>
<p>Ingresa el stock actual y el sistema calculará cuánta materia prima necesitas picar.</p>

<table>
<thead>
<tr>
  <th>Producto</th>
  <th>Relación</th>
  <th>Stock actual</th>
  <th>Meta</th>
  <th>Faltante</th>
  <th>Materia prima necesaria</th>
</tr>
</thead>
<tbody>

<tr>
  <td>Solomillo de res</td>
  <td>1 losa = 10 solomillos</td>
  <td><input type="number" id="sol_stock" value="0"></td>
  <td><input type="number" id="sol_meta" value="500"></td>
  <td id="sol_falta">0</td>
  <td class="req" id="sol_req">0</td>
</tr>

<tr>
  <td>Jamón en cubos</td>
  <td>1 jamón = 50 cubos</td>
  <td><input type="number" id="jam_stock" value="0"></td>
  <td><input type="number" id="jam_meta" value="500"></td>
  <td id="jam_falta">0</td>
  <td class="req" id="jam_req">0</td>
</tr>

<tr>
  <td>Bolonia en rodajas</td>
  <td>1 bolonia = 10 rodajas</td>
  <td><input type="number" id="bol_stock" value="0"></td>
  <td><input type="number" id="bol_meta" value="500"></td>
  <td id="bol_falta">0</td>
  <td class="req" id="bol_req">0</td>
</tr>

<tr>
  <td>Medallones de carne</td>
  <td>1 venado = 6 medallones</td>
  <td><input type="number" id="ven_stock" value="0"></td>
  <td><input type="number" id="ven_meta" value="500"></td>
  <td id="ven_falta">0</td>
  <td class="req" id="ven_req">0</td>
</tr>

<tr>
  <td>Jugo</td>
  <td>50 frutas = 50 jugos</td>
  <td><input type="number" id="jug_stock" value="0"></td>
  <td><input type="number" id="jug_meta" value="500"></td>
  <td id="jug_falta">0</td>
  <td class="req" id="jug_req">0</td>
</tr>

<tr>
  <td>Fideos</td>
  <td>1 masa = 5 fideos</td>
  <td><input type="number" id="fid_stock" value="0"></td>
  <td><input type="number" id="fid_meta" value="500"></td>
  <td id="fid_falta">0</td>
  <td class="req" id="fid_req">0</td>
</tr>

</tbody>
</table>

<button onclick="calcular()" style="margin-top:20px; padding:10px 20px; font-size:16px;">Calcular</button>

<script>
function calcular() {
  // Solomillos
  let sol_falta = document.getElementById('sol_meta').value - document.getElementById('sol_stock').value;
  document.getElementById('sol_falta').innerText = sol_falta;
  document.getElementById('sol_req').innerText = Math.max(0, Math.ceil(sol_falta / 10));

  // Jamón cubos
  let jam_falta = document.getElementById('jam_meta').value - document.getElementById('jam_stock').value;
  document.getElementById('jam_falta').innerText = jam_falta;
  document.getElementById('jam_req').innerText = Math.max(0, Math.ceil(jam_falta / 50));

  // Bolonia
  let bol_falta = document.getElementById('bol_meta').value - document.getElementById('bol_stock').value;
  document.getElementById('bol_falta').innerText = bol_falta;
  document.getElementById('bol_req').innerText = Math.max(0, Math.ceil(bol_falta / 10));

  // Venado
  let ven_falta = document.getElementById('ven_meta').value - document.getElementById('ven_stock').value;
  document.getElementById('ven_falta').innerText = ven_falta;
  document.getElementById('ven_req').innerText = Math.max(0, Math.ceil(ven_falta / 6));

  // Jugos
  let jug_falta = document.getElementById('jug_meta').value - document.getElementById('jug_stock').value;
  document.getElementById('jug_falta').innerText = jug_falta;
  document.getElementById('jug_req').innerText = Math.max(0, Math.ceil(jug_falta / 50));

  // Fideos
  let fid_falta = document.getElementById('fid_meta').value - document.getElementById('fid_stock').value;
  document.getElementById('fid_falta').innerText = fid_falta;
  document.getElementById('fid_req').innerText = Math.max(0, Math.ceil(fid_falta / 5));
}
</script>

</body>
</html>
